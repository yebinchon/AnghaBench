
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int ds_bookmarks; TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_8__ {int zbm_creation_txg; } ;
struct TYPE_10__ {TYPE_2__ dbn_phys; } ;
typedef TYPE_4__ dsl_bookmark_node_t ;
struct TYPE_7__ {int dd_pool; } ;


 int ASSERT (int ) ;
 TYPE_4__* avl_last (int *) ;
 int dsl_pool_config_held (int ) ;

uint64_t
dsl_bookmark_latest_txg(dsl_dataset_t *ds)
{
 ASSERT(dsl_pool_config_held(ds->ds_dir->dd_pool));
 dsl_bookmark_node_t *dbn = avl_last(&ds->ds_bookmarks);
 if (dbn == ((void*)0))
  return (0);
 return (dbn->dbn_phys.zbm_creation_txg);
}
