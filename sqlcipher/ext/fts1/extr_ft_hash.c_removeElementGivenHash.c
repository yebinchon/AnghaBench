
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct _ht {scalar_t__ count; TYPE_2__* chain; } ;
struct TYPE_11__ {scalar_t__ count; scalar_t__ first; int (* xFree ) (TYPE_2__*) ;scalar_t__ copyKey; struct _ht* ht; } ;
struct TYPE_10__ {struct TYPE_10__* pKey; struct TYPE_10__* next; TYPE_1__* prev; } ;
struct TYPE_9__ {TYPE_2__* next; } ;
typedef TYPE_2__ HashElem ;
typedef TYPE_3__ Hash ;


 int HashClear (TYPE_3__*) ;
 int assert (int) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void removeElementGivenHash(
  Hash *pH,
  HashElem* elem,
  int h
){
  struct _ht *pEntry;
  if( elem->prev ){
    elem->prev->next = elem->next;
  }else{
    pH->first = elem->next;
  }
  if( elem->next ){
    elem->next->prev = elem->prev;
  }
  pEntry = &pH->ht[h];
  if( pEntry->chain==elem ){
    pEntry->chain = elem->next;
  }
  pEntry->count--;
  if( pEntry->count<=0 ){
    pEntry->chain = 0;
  }
  if( pH->copyKey && elem->pKey ){
    pH->xFree(elem->pKey);
  }
  pH->xFree( elem );
  pH->count--;
  if( pH->count<=0 ){
    assert( pH->first==0 );
    assert( pH->count==0 );
    HashClear(pH);
  }
}
