
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMIOError ;
const char *MMBMPReadErrorString(MMIOError error)
{
 switch (error) {
  case 134:
   return "Could not open file";
  case 132:
   return "Not a BMP file";
  case 128:
   return "Unsupported BMP header";
  case 133:
   return "Invalid number of color panes in BMP file";
  case 130:
   return "Unsupported color depth in BMP file";
  case 129:
   return "Unsupported file compression in BMP file";
  case 131:
   return "Could not read BMP pixel data";
  default:
   return ((void*)0);
 }
}
