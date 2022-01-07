
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int iso9660_t ;


 int ISO_EXTENSION_NONE ;
 int * iso9660_open_fuzzy_ext (char const*,int ,int ) ;

iso9660_t *
iso9660_open_fuzzy (const char *psz_path, uint16_t i_fuzz )
{
  return iso9660_open_fuzzy_ext(psz_path, ISO_EXTENSION_NONE, i_fuzz);
}
