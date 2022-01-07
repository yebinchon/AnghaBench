
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cTValue ;
struct TYPE_5__ {int val; int key; } ;
typedef TYPE_1__ Node ;
typedef int GCtab ;
typedef int GCstr ;


 TYPE_1__* hashstr (int *,int *) ;
 TYPE_1__* nextnode (TYPE_1__*) ;
 int * strV (int *) ;
 scalar_t__ tvisstr (int *) ;

cTValue *lj_tab_getstr(GCtab *t, GCstr *key)
{
  Node *n = hashstr(t, key);
  do {
    if (tvisstr(&n->key) && strV(&n->key) == key)
      return &n->val;
  } while ((n = nextnode(n)));
  return ((void*)0);
}
