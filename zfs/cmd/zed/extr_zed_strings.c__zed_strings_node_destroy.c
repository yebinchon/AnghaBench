
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* val; struct TYPE_4__* key; } ;
typedef TYPE_1__ zed_strings_node_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
_zed_strings_node_destroy(zed_strings_node_t *np)
{
 if (!np)
  return;

 if (np->key) {
  if (np->key != np->val)
   free(np->key);
  np->key = ((void*)0);
 }
 if (np->val) {
  free(np->val);
  np->val = ((void*)0);
 }
 free(np);
}
