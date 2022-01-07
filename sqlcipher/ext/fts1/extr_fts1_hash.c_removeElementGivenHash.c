
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct _fts1ht {scalar_t__ count; TYPE_2__* chain; } ;
struct TYPE_10__ {struct TYPE_10__* pKey; struct TYPE_10__* next; TYPE_1__* prev; } ;
typedef TYPE_2__ fts1HashElem ;
struct TYPE_11__ {scalar_t__ count; scalar_t__ first; int (* xFree ) (TYPE_2__*) ;scalar_t__ copyKey; struct _fts1ht* ht; } ;
typedef TYPE_3__ fts1Hash ;
struct TYPE_9__ {TYPE_2__* next; } ;


 int assert (int) ;
 int fts1HashClear (TYPE_3__*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void removeElementGivenHash(
  fts1Hash *pH,
  fts1HashElem* elem,
  int h
){
  struct _fts1ht *pEntry;
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
    fts1HashClear(pH);
  }
}
