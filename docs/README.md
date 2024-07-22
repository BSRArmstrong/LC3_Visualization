# LC3_Visualization 

LC3_Visualization is an interactive visualization of the LC-3 computer described in *Introduction to Computing* by Professors Yale Patt and Sanjay Patel.  It has use cases as:

* A lecture demonstration tool, particularly for the operation of computer components, such as multiplexers, decoders, buses and registers; 
* A tool build an understanding of computer components and computer organization,
  - including assignments where students play the role of the Control Unit, and
* For LC-3 assembly-language program visualization,

LC3_Visualization is designed with the philosophy

                     "Nothing is hidden" 


## Quick Start

* LC3_Visualization loads object files produced by the assembler in lc3tools by Chirag Sakhuja, 
[lc3tools](https://github.com/chiragsakhuja/lc3tools/).

* A quick start guide, as well as a detailed description of the user interface, is provided in
[LC3_Visualization_UserGuide.pdf](https://github.com/BSRArmstrong/LC3_Visualization/docs/LC3_Visualization_UserGuide.pdf).

* A sample, loadable LC-3 object file, with the source
assembly-language file, is provided in folder [samples](https://github.com/BSRArmstrong/LC3_Visualization/samples).

  * The example object file can be loaded by clicking "Select Object File", and selecting the sample object file.   
  * The first instruction can be executed by clicking "Do Step".  


## Executables 

LC3_Tools builds under Linux with g++ for Linux, and g++-mingw-w64 for Windows.  Graphics libraries (imgui and GLFW) are statically linked, so only the OpenGL 1.3 dynamic-link library is required.  We have had good success porting to Windows 8 to 11, and several linux systems.

* For now (July 2024) executables are posted.

* Source code and make files coming soon.  



[//]:  ### Required Packages to build LC3_Visualization
[//]:  This is a list of packages that are required to be added onto
[//]:  a clean Ubuntu24.04 installation, 

[//]:  * mesa-common-dev
[//]:  * g++-mingw-w64



## Copyright Notice
Copyright 2022-2024 &copy;  Brian Armstrong and John Poulakos.  See 
[LICENSE.txt](https://github.com/BSRArmstrong/LC3_Visualization/LICENSE.txt)
and
[NOTICE.txt](https://github.com/BSRArmstrong/LC3_Visualization/NOTICE.txt). 
