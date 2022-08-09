@echo off
title "Create a new Next.js component with Typescript and SCSS"

:component_name
set /p component_name="Enter component name: "
if [%component_name%] == [] goto component_name
if exist .\components\%component_name%\ echo a component with this name already exists.
if exist .\components\%component_name%\ goto component_name

:script_language
set script_language_valid=false
set /p script_language="Javascript or Typescript? (Type either TS or JS) "
if %script_language% == JS set script_language_valid=true
if %script_language% == TS set script_language_valid=true
if not %script_language_valid% == true echo please enter a valid language
if not %script_language_valid% == true goto script_language
if %script_language% == JS set script_language=js
if %script_language% == TS set script_language=ts

:style_language
set style_language_valid=false
set /p style_language="CSS, SCSS or SASS? "
if %style_language% == CSS set style_language_valid=true
if %style_language% == SCSS set style_language_valid=true
if %style_language% == SASS set style_language_valid=true
if not %style_language_valid% == true echo please enter a valid language
if not %style_language_valid% == true goto style_language
if %style_language% == CSS set style_language=css
if %style_language% == SCSS set style_language=scss
if %style_language% == SASS set style_language=sass

md .\components\%component_name%

echo import %component_name% from './%component_name%';> ".\components\%component_name%\index.%script_language%"
echo:>> ".\components\%component_name%\index.%script_language%"
echo export default %component_name%;>> ".\components\%component_name%\index.%script_language%"

echo import styles from './%component_name%.module.%style_language%';> ".\components\%component_name%\%component_name%.%script_language%x"
echo:>> ".\components\%component_name%\%component_name%.%script_language%x"
if %script_language% == ts echo type Props ^= ^{>> ".\components\%component_name%\%component_name%.%script_language%x"
if %script_language% == ts echo ^}^;>> ".\components\%component_name%\%component_name%.%script_language%x"
if %script_language% == ts echo:>> ".\components\%component_name%\%component_name%.%script_language%x"
if %script_language% == ts echo export default function %component_name%^(^{>> ".\components\%component_name%\%component_name%.%script_language%x"
if %script_language% == ts echo }: Props^) {>> ".\components\%component_name%\%component_name%.%script_language%x"
if %script_language% == js echo export default function %component_name%^(^) ^{>> ".\components\%component_name%\%component_name%.%script_language%x"
echo    return ^(>> ".\components\%component_name%\%component_name%.%script_language%x"
echo        ^<^>>> ".\components\%component_name%\%component_name%.%script_language%x"
echo        ^</^>>> ".\components\%component_name%\%component_name%.%script_language%x"
echo    ^)^;>> ".\components\%component_name%\%component_name%.%script_language%x"
echo ^}^;>> ".\components\%component_name%\%component_name%.%script_language%x"

echo:> ".\components\%component_name%\%component_name%.module.%style_language%"

echo successfully created component!