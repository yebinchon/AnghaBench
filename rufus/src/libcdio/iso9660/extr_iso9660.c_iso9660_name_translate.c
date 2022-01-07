
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iso9660_name_translate_ext (char const*,char*,int ) ;

int
iso9660_name_translate(const char *psz_oldname, char *psz_newname)
{
  return iso9660_name_translate_ext(psz_oldname, psz_newname, 0);
}
