
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RowSetChunk {struct RowSetChunk* pNextChunk; } ;
struct TYPE_2__ {int rsFlags; scalar_t__ pForest; scalar_t__ pLast; scalar_t__ pEntry; scalar_t__ nFresh; struct RowSetChunk* pChunk; int db; } ;
typedef TYPE_1__ RowSet ;


 int ROWSET_SORTED ;
 int sqlite3DbFree (int ,struct RowSetChunk*) ;

void sqlite3RowSetClear(void *pArg){
  RowSet *p = (RowSet*)pArg;
  struct RowSetChunk *pChunk, *pNextChunk;
  for(pChunk=p->pChunk; pChunk; pChunk = pNextChunk){
    pNextChunk = pChunk->pNextChunk;
    sqlite3DbFree(p->db, pChunk);
  }
  p->pChunk = 0;
  p->nFresh = 0;
  p->pEntry = 0;
  p->pLast = 0;
  p->pForest = 0;
  p->rsFlags = ROWSET_SORTED;
}
