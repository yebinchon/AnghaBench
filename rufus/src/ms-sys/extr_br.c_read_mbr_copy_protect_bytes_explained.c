
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int FILE ;


 char const* _ (char*) ;
 int read_mbr_copy_protect_bytes (int *) ;

const char *read_mbr_copy_protect_bytes_explained(FILE *fp)
{
   uint16_t t = read_mbr_copy_protect_bytes(fp);
   switch(t)
   {
      case 0:
  return _("not copy protected");
      case 0x5a5a:
  return _("copy protected");
      default:
  return _("unknown value");
   }
}
