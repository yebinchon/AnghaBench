
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMIOError ;






const char *MMPNGReadErrorString(MMIOError error)
{
 switch (error) {
  case 130:
   return "Could not open file";
  case 128:
   return "Could not read file";
  case 129:
   return "Not a PNG file";
  default:
   return ((void*)0);
 }
}
