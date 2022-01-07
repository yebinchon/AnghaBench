
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tree; } ;
typedef TYPE_1__ zed_strings_t ;
typedef int zed_strings_node_t ;


 int _zed_strings_node_destroy (int *) ;
 int avl_destroy (int *) ;
 int * avl_destroy_nodes (int *,void**) ;
 int free (TYPE_1__*) ;

void
zed_strings_destroy(zed_strings_t *zsp)
{
 void *cookie;
 zed_strings_node_t *np;

 if (!zsp)
  return;

 cookie = ((void*)0);
 while ((np = avl_destroy_nodes(&zsp->tree, &cookie)))
  _zed_strings_node_destroy(np);

 avl_destroy(&zsp->tree);
 free(zsp);
}
