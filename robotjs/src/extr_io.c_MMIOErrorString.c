
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMImageType ;
typedef int MMIOError ;


 char const* MMBMPReadErrorString (int ) ;
 char const* MMPNGReadErrorString (int ) ;



const char *MMIOErrorString(MMImageType type, MMIOError error)
{
 switch (type) {
  case 129:
   return MMBMPReadErrorString(error);
  case 128:
   return MMPNGReadErrorString(error);
  default:
   return "Unsupported image type";
 }
}
