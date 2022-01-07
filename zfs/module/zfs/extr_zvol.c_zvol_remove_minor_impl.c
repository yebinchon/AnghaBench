
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ zv_open_count; int zv_state_lock; int zv_suspend_ref; int zv_name; } ;
typedef TYPE_1__ zvol_state_t ;
struct TYPE_10__ {int (* zv_free ) (TYPE_1__*) ;int (* zv_clear_private ) (TYPE_1__*) ;} ;


 int RW_WRITER ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_5__* ops ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 scalar_t__ zvol_inhibit_dev ;
 int zvol_remove (TYPE_1__*) ;
 int zvol_state_list ;
 int zvol_state_lock ;

__attribute__((used)) static void
zvol_remove_minor_impl(const char *name)
{
 zvol_state_t *zv = ((void*)0), *zv_next;

 if (zvol_inhibit_dev)
  return;

 rw_enter(&zvol_state_lock, RW_WRITER);

 for (zv = list_head(&zvol_state_list); zv != ((void*)0); zv = zv_next) {
  zv_next = list_next(&zvol_state_list, zv);

  mutex_enter(&zv->zv_state_lock);
  if (strcmp(zv->zv_name, name) == 0) {






   if (zv->zv_open_count > 0 ||
       atomic_read(&zv->zv_suspend_ref)) {
    mutex_exit(&zv->zv_state_lock);
    continue;
   }
   zvol_remove(zv);

   ops->zv_clear_private(zv);
   mutex_exit(&zv->zv_state_lock);
   break;
  } else {
   mutex_exit(&zv->zv_state_lock);
  }
 }


 rw_exit(&zvol_state_lock);

 if (zv != ((void*)0))
  ops->zv_free(zv);
}
