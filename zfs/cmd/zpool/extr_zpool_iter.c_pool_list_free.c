
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zl_pool; int zl_avl; int zn_handle; } ;
typedef TYPE_1__ zpool_node_t ;
typedef TYPE_1__ zpool_list_t ;
typedef int uu_avl_walk_t ;


 int UU_WALK_ROBUST ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (TYPE_1__*) ;
 char* gettext (char*) ;
 int stderr ;
 int uu_avl_destroy (int ) ;
 int uu_avl_pool_destroy (int ) ;
 int uu_avl_remove (int ,TYPE_1__*) ;
 int uu_avl_walk_end (int *) ;
 TYPE_1__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (int ,int ) ;
 int zpool_close (int ) ;

void
pool_list_free(zpool_list_t *zlp)
{
 uu_avl_walk_t *walk;
 zpool_node_t *node;

 if ((walk = uu_avl_walk_start(zlp->zl_avl, UU_WALK_ROBUST)) == ((void*)0)) {
  (void) fprintf(stderr,
      gettext("internal error: out of memory"));
  exit(1);
 }

 while ((node = uu_avl_walk_next(walk)) != ((void*)0)) {
  uu_avl_remove(zlp->zl_avl, node);
  zpool_close(node->zn_handle);
  free(node);
 }

 uu_avl_walk_end(walk);
 uu_avl_destroy(zlp->zl_avl);
 uu_avl_pool_destroy(zlp->zl_pool);

 free(zlp);
}
