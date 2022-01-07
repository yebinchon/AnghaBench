
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _fts3ht {TYPE_1__* chain; int count; } ;
struct TYPE_6__ {TYPE_1__* first; } ;
struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ Fts3HashElem ;
typedef TYPE_2__ Fts3Hash ;



__attribute__((used)) static void fts3HashInsertElement(
  Fts3Hash *pH,
  struct _fts3ht *pEntry,
  Fts3HashElem *pNew
){
  Fts3HashElem *pHead;
  pHead = pEntry->chain;
  if( pHead ){
    pNew->next = pHead;
    pNew->prev = pHead->prev;
    if( pHead->prev ){ pHead->prev->next = pNew; }
    else { pH->first = pNew; }
    pHead->prev = pNew;
  }else{
    pNew->next = pH->first;
    if( pH->first ){ pH->first->prev = pNew; }
    pNew->prev = 0;
    pH->first = pNew;
  }
  pEntry->count++;
  pEntry->chain = pNew;
}
