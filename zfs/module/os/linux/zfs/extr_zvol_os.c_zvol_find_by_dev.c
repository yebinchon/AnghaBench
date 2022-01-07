
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int zv_state_lock; TYPE_1__* zv_zso; } ;
typedef TYPE_2__ zvol_state_t ;
typedef scalar_t__ dev_t ;
struct TYPE_7__ {scalar_t__ zvo_dev; } ;


 int RW_READER ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zvol_state_list ;
 int zvol_state_lock ;

__attribute__((used)) static zvol_state_t *
zvol_find_by_dev(dev_t dev)
{
 zvol_state_t *zv;

 rw_enter(&zvol_state_lock, RW_READER);
 for (zv = list_head(&zvol_state_list); zv != ((void*)0);
     zv = list_next(&zvol_state_list, zv)) {
  mutex_enter(&zv->zv_state_lock);
  if (zv->zv_zso->zvo_dev == dev) {
   rw_exit(&zvol_state_lock);
   return (zv);
  }
  mutex_exit(&zv->zv_state_lock);
 }
 rw_exit(&zvol_state_lock);

 return (((void*)0));
}
