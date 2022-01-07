
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int who_deleg_perm_avl; } ;
typedef TYPE_1__ who_perm_t ;
typedef int deleg_perm_node_t ;


 int free (int *) ;
 int uu_avl_destroy (int ) ;
 int * uu_avl_first (int ) ;
 int * uu_avl_next (int ,int *) ;
 int uu_avl_remove (int ,int *) ;

__attribute__((used)) static inline void
who_perm_fini(who_perm_t *who_perm)
{
 deleg_perm_node_t *node = uu_avl_first(who_perm->who_deleg_perm_avl);

 while (node != ((void*)0)) {
  deleg_perm_node_t *next_node =
      uu_avl_next(who_perm->who_deleg_perm_avl, node);

  uu_avl_remove(who_perm->who_deleg_perm_avl, node);
  free(node);
  node = next_node;
 }

 uu_avl_destroy(who_perm->who_deleg_perm_avl);
}
