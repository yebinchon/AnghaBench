
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* zv_zso; } ;
typedef TYPE_2__ zvol_state_t ;
typedef int uint64_t ;
struct TYPE_4__ {int zvo_disk; } ;


 int set_capacity (int ,int ) ;

__attribute__((used)) static void
zvol_set_capacity_impl(zvol_state_t *zv, uint64_t capacity)
{

 set_capacity(zv->zv_zso->zvo_disk, capacity);
}
