
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zv_hash; int zv_hlink; } ;
typedef TYPE_1__ zvol_state_t ;


 int ASSERT (int ) ;
 int RW_WRITE_HELD (int *) ;
 int ZVOL_HT_HEAD (int ) ;
 int hlist_add_head (int *,int ) ;
 int list_insert_head (int *,TYPE_1__*) ;
 int zvol_state_list ;
 int zvol_state_lock ;

void
zvol_insert(zvol_state_t *zv)
{
 ASSERT(RW_WRITE_HELD(&zvol_state_lock));
 list_insert_head(&zvol_state_list, zv);
 hlist_add_head(&zv->zv_hlink, ZVOL_HT_HEAD(zv->zv_hash));
}
