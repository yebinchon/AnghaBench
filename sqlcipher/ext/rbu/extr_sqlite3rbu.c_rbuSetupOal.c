
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ zTbl; scalar_t__ zDataTbl; scalar_t__ zIdx; scalar_t__ bCleanup; } ;
struct TYPE_10__ {int rc; int nStep; TYPE_3__ objiter; int zErrmsg; } ;
typedef TYPE_1__ sqlite3rbu ;
struct TYPE_11__ {scalar_t__ zTbl; scalar_t__ zIdx; scalar_t__ zDataTbl; int nRow; } ;
typedef TYPE_2__ RbuState ;
typedef TYPE_3__ RbuObjIter ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int rbuObjIterNext (TYPE_1__*,TYPE_3__*) ;
 int rbuObjIterPrepareAll (TYPE_1__*,TYPE_3__*,int ) ;
 scalar_t__ rbuStrCompare (scalar_t__,scalar_t__) ;
 int sqlite3_mprintf (char*) ;

__attribute__((used)) static void rbuSetupOal(sqlite3rbu *p, RbuState *pState){
  assert( p->rc==SQLITE_OK );
  if( pState->zTbl ){
    RbuObjIter *pIter = &p->objiter;
    int rc = SQLITE_OK;

    while( rc==SQLITE_OK && pIter->zTbl && (pIter->bCleanup
       || rbuStrCompare(pIter->zIdx, pState->zIdx)
       || (pState->zDataTbl==0 && rbuStrCompare(pIter->zTbl, pState->zTbl))
       || (pState->zDataTbl && rbuStrCompare(pIter->zDataTbl, pState->zDataTbl))
    )){
      rc = rbuObjIterNext(p, pIter);
    }

    if( rc==SQLITE_OK && !pIter->zTbl ){
      rc = SQLITE_ERROR;
      p->zErrmsg = sqlite3_mprintf("rbu_state mismatch error");
    }

    if( rc==SQLITE_OK ){
      p->nStep = pState->nRow;
      rc = rbuObjIterPrepareAll(p, &p->objiter, p->nStep);
    }

    p->rc = rc;
  }
}
