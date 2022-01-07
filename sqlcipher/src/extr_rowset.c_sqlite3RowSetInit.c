
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct RowSetEntry {int dummy; } ;
typedef int sqlite3 ;
struct TYPE_5__ {scalar_t__ iBatch; int rsFlags; scalar_t__ nFresh; struct RowSetEntry* pFresh; scalar_t__ pForest; scalar_t__ pLast; scalar_t__ pEntry; int * db; scalar_t__ pChunk; } ;
typedef TYPE_1__ RowSet ;


 int ROUND8 (int) ;
 int ROWSET_SORTED ;
 TYPE_1__* sqlite3DbMallocRawNN (int *,int) ;
 int sqlite3DbMallocSize (int *,TYPE_1__*) ;

RowSet *sqlite3RowSetInit(sqlite3 *db){
  RowSet *p = sqlite3DbMallocRawNN(db, sizeof(*p));
  if( p ){
    int N = sqlite3DbMallocSize(db, p);
    p->pChunk = 0;
    p->db = db;
    p->pEntry = 0;
    p->pLast = 0;
    p->pForest = 0;
    p->pFresh = (struct RowSetEntry*)(ROUND8(sizeof(*p)) + (char*)p);
    p->nFresh = (u16)((N - ROUND8(sizeof(*p)))/sizeof(struct RowSetEntry));
    p->rsFlags = ROWSET_SORTED;
    p->iBatch = 0;
  }
  return p;
}
