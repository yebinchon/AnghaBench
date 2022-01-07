
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int space_ref_t ;
typedef int avl_tree_t ;


 int avl_destroy (int *) ;
 int * avl_destroy_nodes (int *,void**) ;
 int kmem_free (int *,int) ;

void
space_reftree_destroy(avl_tree_t *t)
{
 space_ref_t *sr;
 void *cookie = ((void*)0);

 while ((sr = avl_destroy_nodes(t, &cookie)) != ((void*)0))
  kmem_free(sr, sizeof (*sr));

 avl_destroy(t);
}
