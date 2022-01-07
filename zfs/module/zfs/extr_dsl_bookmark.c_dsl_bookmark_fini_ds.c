
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ds_bookmarks; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int dbn_lock; int dbn_name; } ;
typedef TYPE_2__ dsl_bookmark_node_t ;


 int avl_destroy (int *) ;
 TYPE_2__* avl_destroy_nodes (int *,void**) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;
 int spa_strfree (int ) ;

void
dsl_bookmark_fini_ds(dsl_dataset_t *ds)
{
 void *cookie = ((void*)0);
 dsl_bookmark_node_t *dbn;

 if (ds->ds_is_snapshot)
  return;

 while ((dbn = avl_destroy_nodes(&ds->ds_bookmarks, &cookie)) != ((void*)0)) {
  spa_strfree(dbn->dbn_name);
  mutex_destroy(&dbn->dbn_lock);
  kmem_free(dbn, sizeof (*dbn));
 }
 avl_destroy(&ds->ds_bookmarks);
}
