
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ count; scalar_t__ copyKey; scalar_t__ htsize; TYPE_1__* ht; TYPE_1__* first; } ;
struct TYPE_5__ {struct TYPE_5__* pKey; struct TYPE_5__* next; } ;
typedef TYPE_1__ Fts3HashElem ;
typedef TYPE_2__ Fts3Hash ;


 int assert (int) ;
 int fts3HashFree (TYPE_1__*) ;

void sqlite3Fts3HashClear(Fts3Hash *pH){
  Fts3HashElem *elem;

  assert( pH!=0 );
  elem = pH->first;
  pH->first = 0;
  fts3HashFree(pH->ht);
  pH->ht = 0;
  pH->htsize = 0;
  while( elem ){
    Fts3HashElem *next_elem = elem->next;
    if( pH->copyKey && elem->pKey ){
      fts3HashFree(elem->pKey);
    }
    fts3HashFree(elem);
    elem = next_elem;
  }
  pH->count = 0;
}
