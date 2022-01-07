
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef TYPE_1__ iso9660_pvd_t ;



int
iso9660_get_pvd_version(const iso9660_pvd_t *pvd)
{
  if (((void*)0) == pvd) return 0;
  return pvd->version;
}
