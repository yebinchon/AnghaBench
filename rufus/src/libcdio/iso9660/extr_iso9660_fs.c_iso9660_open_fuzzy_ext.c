
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int iso_extension_mask_t ;
typedef int iso9660_t ;


 int * iso9660_open_ext_private (char const*,int ,int ,int) ;

iso9660_t *
iso9660_open_fuzzy_ext (const char *psz_path,
   iso_extension_mask_t iso_extension_mask,
   uint16_t i_fuzz)
{
  return iso9660_open_ext_private(psz_path, iso_extension_mask, i_fuzz,
      1);
}
