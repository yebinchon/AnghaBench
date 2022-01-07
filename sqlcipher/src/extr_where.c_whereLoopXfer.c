
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_12__ {scalar_t__ pIndex; } ;
struct TYPE_11__ {scalar_t__ needFree; } ;
struct TYPE_14__ {TYPE_2__ btree; TYPE_1__ vtab; } ;
struct TYPE_13__ {int nLTerm; int wsFlags; TYPE_8__ u; struct TYPE_13__* aLTerm; } ;
typedef TYPE_3__ WhereLoop ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int WHERE_AUTO_INDEX ;
 int WHERE_LOOP_XFER_SZ ;
 int WHERE_VIRTUALTABLE ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_8__*,int ,int) ;
 int whereLoopClearUnion (int *,TYPE_3__*) ;
 scalar_t__ whereLoopResize (int *,TYPE_3__*,int) ;

__attribute__((used)) static int whereLoopXfer(sqlite3 *db, WhereLoop *pTo, WhereLoop *pFrom){
  whereLoopClearUnion(db, pTo);
  if( whereLoopResize(db, pTo, pFrom->nLTerm) ){
    memset(&pTo->u, 0, sizeof(pTo->u));
    return SQLITE_NOMEM_BKPT;
  }
  memcpy(pTo, pFrom, WHERE_LOOP_XFER_SZ);
  memcpy(pTo->aLTerm, pFrom->aLTerm, pTo->nLTerm*sizeof(pTo->aLTerm[0]));
  if( pFrom->wsFlags & WHERE_VIRTUALTABLE ){
    pFrom->u.vtab.needFree = 0;
  }else if( (pFrom->wsFlags & WHERE_AUTO_INDEX)!=0 ){
    pFrom->u.btree.pIndex = 0;
  }
  return SQLITE_OK;
}
