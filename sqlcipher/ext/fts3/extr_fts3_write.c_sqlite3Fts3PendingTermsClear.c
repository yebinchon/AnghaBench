
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nIndex; scalar_t__ nPendingData; TYPE_1__* aIndex; } ;
struct TYPE_4__ {int hPending; } ;
typedef int PendingList ;
typedef TYPE_2__ Fts3Table ;
typedef int Fts3HashElem ;
typedef int Fts3Hash ;


 int fts3HashClear (int *) ;
 scalar_t__ fts3HashData (int *) ;
 int * fts3HashFirst (int *) ;
 int * fts3HashNext (int *) ;
 int fts3PendingListDelete (int *) ;

void sqlite3Fts3PendingTermsClear(Fts3Table *p){
  int i;
  for(i=0; i<p->nIndex; i++){
    Fts3HashElem *pElem;
    Fts3Hash *pHash = &p->aIndex[i].hPending;
    for(pElem=fts3HashFirst(pHash); pElem; pElem=fts3HashNext(pElem)){
      PendingList *pList = (PendingList *)fts3HashData(pElem);
      fts3PendingListDelete(pList);
    }
    fts3HashClear(pHash);
  }
  p->nPendingData = 0;
}
