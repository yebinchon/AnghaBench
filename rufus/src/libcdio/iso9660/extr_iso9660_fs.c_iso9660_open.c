
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_t ;


 int ISO_EXTENSION_NONE ;
 int * iso9660_open_ext (char const*,int ) ;

iso9660_t *
iso9660_open (const char *psz_path )
{
  return iso9660_open_ext(psz_path, ISO_EXTENSION_NONE);
}
