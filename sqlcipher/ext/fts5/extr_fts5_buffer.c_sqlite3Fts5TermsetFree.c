
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {struct TYPE_6__* pNext; struct TYPE_6__** apHash; } ;
typedef TYPE_1__ Fts5TermsetEntry ;
typedef TYPE_1__ Fts5Termset ;


 size_t ArraySize (TYPE_1__**) ;
 int sqlite3_free (TYPE_1__*) ;

void sqlite3Fts5TermsetFree(Fts5Termset *p){
  if( p ){
    u32 i;
    for(i=0; i<ArraySize(p->apHash); i++){
      Fts5TermsetEntry *pEntry = p->apHash[i];
      while( pEntry ){
        Fts5TermsetEntry *pDel = pEntry;
        pEntry = pEntry->pNext;
        sqlite3_free(pDel);
      }
    }
    sqlite3_free(p);
  }
}
