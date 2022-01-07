
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ iso9660_pvd_t ;



uint8_t
iso9660_get_pvd_type(const iso9660_pvd_t *pvd)
{
  if (((void*)0) == pvd) return 255;
  return(pvd->type);
}
