
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct state* data; struct TYPE_3__* next; int key; } ;
typedef TYPE_1__ x3node ;
struct state {int dummy; } ;
struct config {int dummy; } ;
struct TYPE_4__ {int size; TYPE_1__** ht; } ;


 scalar_t__ statecmp (int ,struct config*) ;
 int statehash (struct config*) ;
 TYPE_2__* x3a ;

struct state *State_find(struct config *key)
{
  unsigned h;
  x3node *np;

  if( x3a==0 ) return 0;
  h = statehash(key) & (x3a->size-1);
  np = x3a->ht[h];
  while( np ){
    if( statecmp(np->key,key)==0 ) break;
    np = np->next;
  }
  return np ? np->data : 0;
}
