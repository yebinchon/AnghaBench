
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* zv_zso; } ;
typedef TYPE_2__ zvol_state_t ;
struct TYPE_4__ {int zvo_disk; } ;


 int set_disk_ro (int ,int) ;

__attribute__((used)) static void
zvol_set_disk_ro_impl(zvol_state_t *zv, int flags)
{

 set_disk_ro(zv->zv_zso->zvo_disk, flags);
}
