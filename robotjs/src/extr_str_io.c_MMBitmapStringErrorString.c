
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMBMPStringError ;
const char *MMBitmapStringErrorString(MMBMPStringError err)
{
 switch (err) {
  case 129:
   return "Invalid header for string";
  case 131:
   return "Error decoding string";
  case 130:
   return "Error decompressing string";
  case 128:
   return "String not of expected size";
  case 133:
   return "Error encoding string";
  case 132:
   return "Error compressing string";
  default:
   return ((void*)0);
 }
}
