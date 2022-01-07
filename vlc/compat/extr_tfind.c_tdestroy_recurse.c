
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ key; struct TYPE_4__* rlink; struct TYPE_4__* llink; } ;
typedef TYPE_1__ node_t ;


 int free (TYPE_1__*) ;
 void stub1 (void*) ;

__attribute__((used)) static void
tdestroy_recurse(node_t* root, void (*free_action)(void *))
{
  if (root->llink != ((void*)0))
    tdestroy_recurse(root->llink, free_action);
  if (root->rlink != ((void*)0))
    tdestroy_recurse(root->rlink, free_action);

  (*free_action) ((void *) root->key);
  free(root);
}
