
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {struct TYPE_26__* ne_name; struct TYPE_26__* ne_next; int * ce_config; struct TYPE_26__* ce_next; struct TYPE_26__* ve_configs; struct TYPE_26__* ve_next; struct TYPE_26__* pe_vdevs; struct TYPE_26__* pe_next; struct TYPE_26__* rn_name; int rn_num_labels; int rn_order; int * rn_config; } ;
typedef TYPE_1__ vdev_entry_t ;
typedef scalar_t__ uint64_t ;
typedef int tpool_t ;
typedef TYPE_1__ rdsk_node_t ;
typedef int pthread_mutex_t ;
struct TYPE_27__ {TYPE_1__* names; TYPE_1__* pools; int member_0; } ;
typedef TYPE_3__ pool_list_t ;
typedef TYPE_1__ pool_entry_t ;
typedef int nvlist_t ;
typedef TYPE_1__ name_entry_t ;
typedef int libpc_handle_t ;
struct TYPE_28__ {scalar_t__ guid; size_t paths; int policy; scalar_t__ can_be_active; int * poolname; scalar_t__ path; scalar_t__ scan; } ;
typedef TYPE_6__ importargs_t ;
typedef TYPE_1__ config_entry_t ;
typedef int boolean_t ;
typedef TYPE_1__ avl_tree_t ;


 int AVL_AFTER ;
 int B_FALSE ;
 int B_TRUE ;
 int O_EXCL ;
 int O_RDONLY ;
 scalar_t__ POOL_STATE_L2CACHE ;
 scalar_t__ POOL_STATE_SPARE ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int _SC_NPROCESSORS_ONLN ;
 int add_config (int *,TYPE_3__*,TYPE_1__*,int ,int ,int *) ;
 int avl_destroy (TYPE_1__*) ;
 TYPE_1__* avl_destroy_nodes (TYPE_1__*,void**) ;
 TYPE_1__* avl_first (TYPE_1__*) ;
 TYPE_1__* avl_walk (TYPE_1__*,TYPE_1__*,int ) ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int * get_configs (int *,TYPE_3__*,scalar_t__,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int open (TYPE_1__*,int) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ strcmp (int *,char*) ;
 int sysconf (int ) ;
 int * tpool_create (int,int,int ,int *) ;
 int tpool_destroy (int *) ;
 int tpool_dispatch (int *,int ,TYPE_1__*) ;
 int tpool_wait (int *) ;
 int verify (int) ;
 char** zpool_default_search_paths (size_t*) ;
 scalar_t__ zpool_find_import_blkid (int *,int *,TYPE_1__**) ;
 scalar_t__ zpool_find_import_scan (int *,int *,TYPE_1__**,char const* const*,size_t) ;
 int zpool_open_func ;

__attribute__((used)) static nvlist_t *
zpool_find_import_impl(libpc_handle_t *hdl, importargs_t *iarg)
{
 nvlist_t *ret = ((void*)0);
 pool_list_t pools = { 0 };
 pool_entry_t *pe, *penext;
 vdev_entry_t *ve, *venext;
 config_entry_t *ce, *cenext;
 name_entry_t *ne, *nenext;
 pthread_mutex_t lock;
 avl_tree_t *cache;
 rdsk_node_t *slice;
 void *cookie;
 tpool_t *t;

 verify(iarg->poolname == ((void*)0) || iarg->guid == 0);
 pthread_mutex_init(&lock, ((void*)0));







 if (iarg->scan || iarg->paths != 0) {
  size_t dirs = iarg->paths;
  const char * const *dir = (const char * const *)iarg->path;

  if (dirs == 0)
   dir = zpool_default_search_paths(&dirs);

  if (zpool_find_import_scan(hdl, &lock, &cache, dir, dirs) != 0)
   return (((void*)0));
 } else {
  if (zpool_find_import_blkid(hdl, &lock, &cache) != 0)
   return (((void*)0));
 }






 t = tpool_create(1, 2 * sysconf(_SC_NPROCESSORS_ONLN), 0, ((void*)0));
 for (slice = avl_first(cache); slice;
     (slice = avl_walk(cache, slice, AVL_AFTER)))
  (void) tpool_dispatch(t, zpool_open_func, slice);

 tpool_wait(t);
 tpool_destroy(t);





 cookie = ((void*)0);
 while ((slice = avl_destroy_nodes(cache, &cookie)) != ((void*)0)) {
  if (slice->rn_config != ((void*)0)) {
   nvlist_t *config = slice->rn_config;
   boolean_t matched = B_TRUE;
   boolean_t aux = B_FALSE;
   int fd;






   if (iarg->poolname != ((void*)0) || iarg->guid != 0) {
    uint64_t state;
    aux = nvlist_lookup_uint64(config,
        ZPOOL_CONFIG_POOL_STATE, &state) == 0 &&
        (state == POOL_STATE_SPARE ||
        state == POOL_STATE_L2CACHE);
   }

   if (iarg->poolname != ((void*)0) && !aux) {
    char *pname;

    matched = nvlist_lookup_string(config,
        ZPOOL_CONFIG_POOL_NAME, &pname) == 0 &&
        strcmp(iarg->poolname, pname) == 0;
   } else if (iarg->guid != 0 && !aux) {
    uint64_t this_guid;

    matched = nvlist_lookup_uint64(config,
        ZPOOL_CONFIG_POOL_GUID, &this_guid) == 0 &&
        iarg->guid == this_guid;
   }
   if (matched) {
    fd = open(slice->rn_name, O_RDONLY | O_EXCL);
    if (fd >= 0 || iarg->can_be_active) {
     if (fd >= 0)
      close(fd);
     add_config(hdl, &pools,
         slice->rn_name, slice->rn_order,
         slice->rn_num_labels, config);
    }
   }
   nvlist_free(config);
  }
  free(slice->rn_name);
  free(slice);
 }
 avl_destroy(cache);
 free(cache);
 pthread_mutex_destroy(&lock);

 ret = get_configs(hdl, &pools, iarg->can_be_active, iarg->policy);

 for (pe = pools.pools; pe != ((void*)0); pe = penext) {
  penext = pe->pe_next;
  for (ve = pe->pe_vdevs; ve != ((void*)0); ve = venext) {
   venext = ve->ve_next;
   for (ce = ve->ve_configs; ce != ((void*)0); ce = cenext) {
    cenext = ce->ce_next;
    nvlist_free(ce->ce_config);
    free(ce);
   }
   free(ve);
  }
  free(pe);
 }

 for (ne = pools.names; ne != ((void*)0); ne = nenext) {
  nenext = ne->ne_next;
  free(ne->ne_name);
  free(ne);
 }

 return (ret);
}
