
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* id; } ;
typedef TYPE_1__ iso9660_pvd_t ;



const char *
iso9660_get_pvd_id(const iso9660_pvd_t *pvd)
{
  if (((void*)0) == pvd) return "ERR";
  return(pvd->id);
}
