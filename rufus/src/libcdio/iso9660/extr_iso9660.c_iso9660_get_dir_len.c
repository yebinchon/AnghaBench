
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int length; } ;
typedef TYPE_1__ iso9660_dir_t ;



uint8_t
iso9660_get_dir_len(const iso9660_dir_t *idr)
{
  if (((void*)0) == idr) return 0;
  return idr->length;
}
