
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pKey; struct TYPE_5__* next; } ;
typedef TYPE_1__ fts2HashElem ;
struct TYPE_6__ {scalar_t__ count; scalar_t__ copyKey; scalar_t__ htsize; TYPE_1__* ht; TYPE_1__* first; } ;
typedef TYPE_2__ fts2Hash ;


 int assert (int) ;
 int fts2HashFree (TYPE_1__*) ;

void sqlite3Fts2HashClear(fts2Hash *pH){
  fts2HashElem *elem;

  assert( pH!=0 );
  elem = pH->first;
  pH->first = 0;
  fts2HashFree(pH->ht);
  pH->ht = 0;
  pH->htsize = 0;
  while( elem ){
    fts2HashElem *next_elem = elem->next;
    if( pH->copyKey && elem->pKey ){
      fts2HashFree(elem->pKey);
    }
    fts2HashFree(elem);
    elem = next_elem;
  }
  pH->count = 0;
}
