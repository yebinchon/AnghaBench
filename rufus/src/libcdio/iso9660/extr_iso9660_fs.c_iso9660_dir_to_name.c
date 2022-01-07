
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {char* str; } ;
struct TYPE_6__ {TYPE_1__ filename; } ;
typedef TYPE_2__ iso9660_dir_t ;


 int cdio_assert (int) ;
 int iso9660_get_dir_len (TYPE_2__ const*) ;
 char* strdup (char*) ;

char *
iso9660_dir_to_name (const iso9660_dir_t *iso9660_dir)
{
  uint8_t len=iso9660_get_dir_len(iso9660_dir);

  if (!len) return ((void*)0);

  cdio_assert (len >= sizeof (iso9660_dir_t));



  if (iso9660_dir->filename.str[1] == '\0')
    return strdup(".");
  else if (iso9660_dir->filename.str[1] == '\1')
    return strdup("..");
  else {
    return strdup(&iso9660_dir->filename.str[1]);
  }
}
