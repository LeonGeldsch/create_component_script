# create_component_script
A Batch script that will automatically create a Next.js component for you.
You will have the option to choose between Javascript/Typescript for your coding language and CSS/SCSS/SASS for your styling language.

## What this script does:
This script will create:
- A new folder in the `/components` directory with the name of your component and inside that folder:
  - An `index.js/ts` file that forwards your component
  - An `[your_component_name].jsx/tsx` file with some basic boilerplate
  - An empty `[your_component_name].module.css/scss/sass` file 

If you chose Typescript as your language it will also create an empty `type Props` object for you.

## Usage:
1. Place create_component.bat in the root directory of your Next.js project
2. Run `.\create_component.bat` in the console
3. Follow the instructions
4. Profit!
