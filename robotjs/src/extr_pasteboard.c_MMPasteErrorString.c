
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMPasteError ;
const char *MMPasteErrorString(MMPasteError err)
{
 switch (err) {
  case 130:
   return "Could not open pasteboard";
  case 132:
   return "Could not clear pasteboard";
  case 131:
   return "Could not create image data from bitmap";
  case 129:
   return "Could not paste data";
  case 128:
   return "Unsupported platform";
  default:
   return ((void*)0);
 }
}
