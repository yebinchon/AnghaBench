
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_5__ {int pReadAux; scalar_t__ bAuxValid; } ;
typedef TYPE_1__ RtreeCursor ;


 int RTREE_QUEUE_TRACE (TYPE_1__*,char*) ;
 int SQLITE_OK ;
 int rtreeSearchPointPop (TYPE_1__*) ;
 int rtreeStepToLeaf (TYPE_1__*) ;
 int sqlite3_reset (int ) ;

__attribute__((used)) static int rtreeNext(sqlite3_vtab_cursor *pVtabCursor){
  RtreeCursor *pCsr = (RtreeCursor *)pVtabCursor;
  int rc = SQLITE_OK;


  RTREE_QUEUE_TRACE(pCsr, "POP-Nx:");
  if( pCsr->bAuxValid ){
    pCsr->bAuxValid = 0;
    sqlite3_reset(pCsr->pReadAux);
  }
  rtreeSearchPointPop(pCsr);
  rc = rtreeStepToLeaf(pCsr);
  return rc;
}
