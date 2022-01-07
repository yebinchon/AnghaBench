
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsavl_node_t ;
typedef int avl_tree_t ;


 int avl_destroy (int *) ;
 int * avl_destroy_nodes (int *,void**) ;
 int free (int *) ;

__attribute__((used)) static void
fsavl_destroy(avl_tree_t *avl)
{
 fsavl_node_t *fn;
 void *cookie;

 if (avl == ((void*)0))
  return;

 cookie = ((void*)0);
 while ((fn = avl_destroy_nodes(avl, &cookie)) != ((void*)0))
  free(fn);
 avl_destroy(avl);
 free(avl);
}
