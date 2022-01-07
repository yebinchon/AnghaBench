
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* rn_name; int rn_labelpaths; scalar_t__ rn_order; int * rn_hdl; int * rn_avl; int * rn_lock; scalar_t__ rn_vdev_guid; } ;
typedef TYPE_1__ rdsk_node_t ;
typedef int pthread_mutex_t ;
typedef int libpc_handle_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int B_FALSE ;
 scalar_t__ IMPORT_ORDER_SCAN_OFFSET ;
 int asprintf (TYPE_1__**,char*,char const*,char const*) ;
 scalar_t__ avl_find (int *,TYPE_1__*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* zutil_alloc (int *,int) ;

__attribute__((used)) static void
zpool_find_import_scan_add_slice(libpc_handle_t *hdl, pthread_mutex_t *lock,
    avl_tree_t *cache, const char *path, const char *name, int order)
{
 avl_index_t where;
 rdsk_node_t *slice;

 slice = zutil_alloc(hdl, sizeof (rdsk_node_t));
 if (asprintf(&slice->rn_name, "%s/%s", path, name) == -1) {
  free(slice);
  return;
 }
 slice->rn_vdev_guid = 0;
 slice->rn_lock = lock;
 slice->rn_avl = cache;
 slice->rn_hdl = hdl;
 slice->rn_order = order + IMPORT_ORDER_SCAN_OFFSET;
 slice->rn_labelpaths = B_FALSE;

 pthread_mutex_lock(lock);
 if (avl_find(cache, slice, &where)) {
  free(slice->rn_name);
  free(slice);
 } else {
  avl_insert(cache, slice, where);
 }
 pthread_mutex_unlock(lock);
}
