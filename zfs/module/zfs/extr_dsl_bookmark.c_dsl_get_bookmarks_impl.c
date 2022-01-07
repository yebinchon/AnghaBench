
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nvlist_t ;
typedef int dsl_pool_t ;
struct TYPE_10__ {int ds_bookmarks; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_11__ {int dbn_name; int dbn_phys; } ;
typedef TYPE_3__ dsl_bookmark_node_t ;
struct TYPE_9__ {int * dd_pool; } ;


 int ASSERT (int ) ;
 TYPE_3__* AVL_NEXT (int *,TYPE_3__*) ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 TYPE_3__* avl_first (int *) ;
 int dsl_bookmark_fetch_props (int *,int *,int *,int *) ;
 scalar_t__ dsl_dataset_is_snapshot (TYPE_2__*) ;
 int dsl_pool_config_held (int *) ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;

int
dsl_get_bookmarks_impl(dsl_dataset_t *ds, nvlist_t *props, nvlist_t *outnvl)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;

 ASSERT(dsl_pool_config_held(dp));

 if (dsl_dataset_is_snapshot(ds))
  return (SET_ERROR(EINVAL));

 for (dsl_bookmark_node_t *dbn = avl_first(&ds->ds_bookmarks);
     dbn != ((void*)0); dbn = AVL_NEXT(&ds->ds_bookmarks, dbn)) {
  nvlist_t *out_props = fnvlist_alloc();

  dsl_bookmark_fetch_props(dp, &dbn->dbn_phys, props, out_props);

  fnvlist_add_nvlist(outnvl, dbn->dbn_name, out_props);
  fnvlist_free(out_props);
 }
 return (0);
}
