
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vdev_spa; int vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_9__ {scalar_t__ aux_count; unsigned long long aux_pool; int aux_guid; } ;
typedef TYPE_2__ spa_aux_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int ASSERT (int ) ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 int avl_remove (int *,TYPE_2__*) ;
 int kmem_free (TYPE_2__*,int) ;
 unsigned long long spa_guid (int ) ;

void
spa_aux_remove(vdev_t *vd, avl_tree_t *avl)
{
 spa_aux_t search;
 spa_aux_t *aux;
 avl_index_t where;

 search.aux_guid = vd->vdev_guid;
 aux = avl_find(avl, &search, &where);

 ASSERT(aux != ((void*)0));

 if (--aux->aux_count == 0) {
  avl_remove(avl, aux);
  kmem_free(aux, sizeof (spa_aux_t));
 } else if (aux->aux_pool == spa_guid(vd->vdev_spa)) {
  aux->aux_pool = 0ULL;
 }
}
