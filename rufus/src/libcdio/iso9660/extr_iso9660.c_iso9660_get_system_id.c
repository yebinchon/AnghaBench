
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int system_id; } ;
typedef TYPE_1__ iso9660_pvd_t ;


 int ISO_MAX_SYSTEM_ID ;
 char* strdup (int ) ;
 int strip_trail (int ,int ) ;

char *
iso9660_get_system_id(const iso9660_pvd_t *pvd)
{
  if (((void*)0)==pvd) return ((void*)0);
  return strdup(strip_trail(pvd->system_id, ISO_MAX_SYSTEM_ID));
}
