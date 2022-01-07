
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int uap_zhp; } ;
typedef TYPE_1__ unavailpool_t ;
typedef TYPE_1__ pendingdev_t ;


 int free (TYPE_1__*) ;
 int g_device_list ;
 int g_pool_list ;
 int * g_tpool ;
 int g_zfs_tid ;
 int g_zfshdl ;
 int libzfs_fini (int ) ;
 int list_destroy (int *) ;
 TYPE_1__* list_head (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int pthread_join (int ,int *) ;
 int tpool_destroy (int *) ;
 int tpool_wait (int *) ;
 int zpool_close (int ) ;

void
zfs_slm_fini()
{
 unavailpool_t *pool;
 pendingdev_t *device;


 (void) pthread_join(g_zfs_tid, ((void*)0));

 if (g_tpool != ((void*)0)) {
  tpool_wait(g_tpool);
  tpool_destroy(g_tpool);
 }

 while ((pool = (list_head(&g_pool_list))) != ((void*)0)) {
  list_remove(&g_pool_list, pool);
  zpool_close(pool->uap_zhp);
  free(pool);
 }
 list_destroy(&g_pool_list);

 while ((device = (list_head(&g_device_list))) != ((void*)0)) {
  list_remove(&g_device_list, device);
  free(device);
 }
 list_destroy(&g_device_list);

 libzfs_fini(g_zfshdl);
}
