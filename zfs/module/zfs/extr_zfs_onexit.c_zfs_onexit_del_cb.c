
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zo_lock; int zo_actions; } ;
typedef TYPE_1__ zfs_onexit_t ;
struct TYPE_9__ {int za_data; int (* za_func ) (int ) ;} ;
typedef TYPE_2__ zfs_onexit_action_node_t ;
typedef int uint64_t ;
typedef int minor_t ;
typedef scalar_t__ boolean_t ;


 int ENOENT ;
 int SET_ERROR (int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int list_remove (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (int ) ;
 TYPE_2__* zfs_onexit_find_cb (TYPE_1__*,int ) ;
 int zfs_onexit_minor_to_state (int ,TYPE_1__**) ;

int
zfs_onexit_del_cb(minor_t minor, uint64_t action_handle, boolean_t fire)
{
 zfs_onexit_t *zo;
 zfs_onexit_action_node_t *ap;
 int error;

 error = zfs_onexit_minor_to_state(minor, &zo);
 if (error)
  return (error);

 mutex_enter(&zo->zo_lock);
 ap = zfs_onexit_find_cb(zo, action_handle);
 if (ap != ((void*)0)) {
  list_remove(&zo->zo_actions, ap);
  mutex_exit(&zo->zo_lock);
  if (fire)
   ap->za_func(ap->za_data);
  kmem_free(ap, sizeof (zfs_onexit_action_node_t));
 } else {
  mutex_exit(&zo->zo_lock);
  error = SET_ERROR(ENOENT);
 }

 return (error);
}
