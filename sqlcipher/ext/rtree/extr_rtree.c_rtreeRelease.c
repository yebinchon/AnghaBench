
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nBusy; scalar_t__ nCursor; scalar_t__ nNodeRef; struct TYPE_5__* zReadAuxSql; int pWriteAux; int pDeleteParent; int pWriteParent; int pReadParent; int pDeleteRowid; int pWriteRowid; int pReadRowid; int pDeleteNode; int pWriteNode; scalar_t__ bCorrupt; scalar_t__ inWrTrans; } ;
typedef TYPE_1__ Rtree ;


 int assert (int) ;
 int nodeBlobReset (TYPE_1__*) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void rtreeRelease(Rtree *pRtree){
  pRtree->nBusy--;
  if( pRtree->nBusy==0 ){
    pRtree->inWrTrans = 0;
    assert( pRtree->nCursor==0 );
    nodeBlobReset(pRtree);
    assert( pRtree->nNodeRef==0 || pRtree->bCorrupt );
    sqlite3_finalize(pRtree->pWriteNode);
    sqlite3_finalize(pRtree->pDeleteNode);
    sqlite3_finalize(pRtree->pReadRowid);
    sqlite3_finalize(pRtree->pWriteRowid);
    sqlite3_finalize(pRtree->pDeleteRowid);
    sqlite3_finalize(pRtree->pReadParent);
    sqlite3_finalize(pRtree->pWriteParent);
    sqlite3_finalize(pRtree->pDeleteParent);
    sqlite3_finalize(pRtree->pWriteAux);
    sqlite3_free(pRtree->zReadAuxSql);
    sqlite3_free(pRtree);
  }
}
