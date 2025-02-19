
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* key; struct TYPE_3__** from; struct TYPE_3__* next; struct symbol* data; } ;
typedef TYPE_1__ x2node ;
struct symbol {int dummy; } ;
struct s_x2 {int size; int count; TYPE_1__** ht; TYPE_1__* tbl; } ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strhash (char const*) ;
 struct s_x2* x2a ;

int Symbol_insert(struct symbol *data, const char *key)
{
  x2node *np;
  unsigned h;
  unsigned ph;

  if( x2a==0 ) return 0;
  ph = strhash(key);
  h = ph & (x2a->size-1);
  np = x2a->ht[h];
  while( np ){
    if( strcmp(np->key,key)==0 ){


      return 0;
    }
    np = np->next;
  }
  if( x2a->count>=x2a->size ){

    int i,arrSize;
    struct s_x2 array;
    array.size = arrSize = x2a->size*2;
    array.count = x2a->count;
    array.tbl = (x2node*)calloc(arrSize, sizeof(x2node) + sizeof(x2node*));
    if( array.tbl==0 ) return 0;
    array.ht = (x2node**)&(array.tbl[arrSize]);
    for(i=0; i<arrSize; i++) array.ht[i] = 0;
    for(i=0; i<x2a->count; i++){
      x2node *oldnp, *newnp;
      oldnp = &(x2a->tbl[i]);
      h = strhash(oldnp->key) & (arrSize-1);
      newnp = &(array.tbl[i]);
      if( array.ht[h] ) array.ht[h]->from = &(newnp->next);
      newnp->next = array.ht[h];
      newnp->key = oldnp->key;
      newnp->data = oldnp->data;
      newnp->from = &(array.ht[h]);
      array.ht[h] = newnp;
    }
    free(x2a->tbl);
    *x2a = array;
  }

  h = ph & (x2a->size-1);
  np = &(x2a->tbl[x2a->count++]);
  np->key = key;
  np->data = data;
  if( x2a->ht[h] ) x2a->ht[h]->from = &(np->next);
  np->next = x2a->ht[h];
  x2a->ht[h] = np;
  np->from = &(x2a->ht[h]);
  return 1;
}
