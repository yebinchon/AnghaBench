
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * data; } ;
typedef TYPE_1__ vdev_cmd_data_list_t ;
typedef int tpool_t ;


 int _SC_NPROCESSORS_ONLN ;
 int sysconf (int ) ;
 int * tpool_create (int,int,int ,int *) ;
 int tpool_destroy (int *) ;
 int tpool_dispatch (int *,int ,void*) ;
 int tpool_wait (int *) ;
 int vdev_run_cmd_thread ;

__attribute__((used)) static void
all_pools_for_each_vdev_run_vcdl(vdev_cmd_data_list_t *vcdl)
{
 tpool_t *t;

 t = tpool_create(1, 5 * sysconf(_SC_NPROCESSORS_ONLN), 0, ((void*)0));
 if (t == ((void*)0))
  return;


 for (int i = 0; i < vcdl->count; i++) {
  (void) tpool_dispatch(t, vdev_run_cmd_thread,
      (void *) &vcdl->data[i]);
 }


 tpool_wait(t);
 tpool_destroy(t);
}
