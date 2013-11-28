autotag
=======

Autotagger for OSX Mavericks. Leverages the cli tag repo here - https://github.com/jdberry/tag. Allows arguments to auto tag 
files recursively based on file extension. 

Uses
=======
Moving off the bash getopts soon, but used them for proof of concept

-o Operation {forcetag,supertag} 

-e Extension {file extension to look for when using supertag}

-d Directory {directory to tag in, if not supplied using working directory}

-t Tag      {the tag to use for the files}

Next Steps
=========
This was just a proof of concept initial commit, next updates will move off getopts for more intuitive commands, and allow for 
multiple extensions and tags. 

