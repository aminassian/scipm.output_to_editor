-- -*- coding: utf-8 -

-- --------------------------------------------------------------------------------------------------------------------------------
-- scipm.output_to_editor namespace
-- --------------------------------------------------------------------------------------------------------------------------------
scipm.output_to_editor = {}
scipm.output_to_editor.config = {
    ["filePath"] = table.concat({ props['SciteUserHome'], "output.txt" }, scipm.data.path.sep )
}

-- (global) scipm.output_to_editor.start
-- -------------------------------------------------------------------------------
scipm.output_to_editor.start = function ()

    -- swith SciTE[Global|User|Directory|].properties
    local configFilePath = scipm.output_to_editor.config.filePath;
    if props["scipm.output_to_editor.config.filePath"] ~= "" then
        configFilePath = props["scipm.output_to_editor.config.filePath"];
    end

    -- open
    local f = assert(io.open(configFilePath, "w")); -- create file if not exist
    f:write(output:textrange(0, output.Length))
    f:close()
    scite.Open(configFilePath)

end

