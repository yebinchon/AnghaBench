
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zv_hlink; } ;
typedef TYPE_1__ zvol_state_t ;


 int ASSERT (int ) ;
 int RW_WRITE_HELD (int *) ;
 int hlist_del (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int zvol_state_list ;
 int zvol_state_lock ;

__attribute__((used)) static void
zvol_remove(zvol_state_t *zv)
{
 ASSERT(RW_WRITE_HELD(&zvol_state_lock));
 list_remove(&zvol_state_list, zv);
 hlist_del(&zv->zv_hlink);
}
