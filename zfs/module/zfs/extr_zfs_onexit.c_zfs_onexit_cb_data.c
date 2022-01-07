
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zo_lock; } ;
typedef TYPE_1__ zfs_onexit_t ;
struct TYPE_7__ {void* za_data; } ;
typedef TYPE_2__ zfs_onexit_action_node_t ;
typedef int uint64_t ;
typedef int minor_t ;


 int ENOENT ;
 int SET_ERROR (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_2__* zfs_onexit_find_cb (TYPE_1__*,int ) ;
 int zfs_onexit_minor_to_state (int ,TYPE_1__**) ;

int
zfs_onexit_cb_data(minor_t minor, uint64_t action_handle, void **data)
{
 zfs_onexit_t *zo;
 zfs_onexit_action_node_t *ap;
 int error;

 *data = ((void*)0);

 error = zfs_onexit_minor_to_state(minor, &zo);
 if (error)
  return (error);

 mutex_enter(&zo->zo_lock);
 ap = zfs_onexit_find_cb(zo, action_handle);
 if (ap != ((void*)0))
  *data = ap->za_data;
 else
  error = SET_ERROR(ENOENT);
 mutex_exit(&zo->zo_lock);

 return (error);
}
