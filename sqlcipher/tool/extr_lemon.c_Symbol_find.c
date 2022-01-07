
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct symbol* data; struct TYPE_3__* next; int key; } ;
typedef TYPE_1__ x2node ;
struct symbol {int dummy; } ;
struct TYPE_4__ {int size; TYPE_1__** ht; } ;


 scalar_t__ strcmp (int ,char const*) ;
 int strhash (char const*) ;
 TYPE_2__* x2a ;

struct symbol *Symbol_find(const char *key)
{
  unsigned h;
  x2node *np;

  if( x2a==0 ) return 0;
  h = strhash(key) & (x2a->size-1);
  np = x2a->ht[h];
  while( np ){
    if( strcmp(np->key,key)==0 ) break;
    np = np->next;
  }
  return np ? np->data : 0;
}
