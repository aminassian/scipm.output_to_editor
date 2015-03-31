# scipm.output_to_editor

scipm.output_to_editor is a [scipm](https://github.com/aminassian/scipm) package

copy output to editor (output.txt)

## install

```
cd myScipmProject
npm install scipm.output_to_editor --save
scipm build
[restart SciTE]
```

## default config SciTE[Global|User].properties

```
scipm.output_to_editor.config.filePath=$(SciteUserHome)/output.txt
```

## tool menu

``Output to editor`` (tool and context menu)

## lua function

```
scipm.output_to_editor.start()
```

