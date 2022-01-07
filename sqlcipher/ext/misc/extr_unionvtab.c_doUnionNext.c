
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int zErrMsg; } ;
struct TYPE_12__ {size_t nSrc; TYPE_2__ base; TYPE_4__* aSrc; scalar_t__ bSwarm; } ;
typedef TYPE_3__ UnionTab ;
struct TYPE_13__ {scalar_t__ iMin; scalar_t__ iMax; int zTab; int db; } ;
typedef TYPE_4__ UnionSrc ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_14__ {size_t iTab; scalar_t__ iMaxRowid; int pStmt; TYPE_1__ base; } ;
typedef TYPE_5__ UnionCsr ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int ) ;
 int sqlite3_step (int ) ;
 int unionFinalizeCsrStmt (TYPE_5__*) ;
 int unionIncrRefcount (TYPE_3__*,size_t) ;
 int unionOpenDatabase (TYPE_3__*,size_t,int *) ;
 int unionPreparePrintf (int*,int *,int ,char*,int ,char*,scalar_t__) ;

__attribute__((used)) static int doUnionNext(UnionCsr *pCsr){
  int rc = SQLITE_OK;
  assert( pCsr->pStmt );
  if( sqlite3_step(pCsr->pStmt)!=SQLITE_ROW ){
    UnionTab *pTab = (UnionTab*)pCsr->base.pVtab;
    rc = unionFinalizeCsrStmt(pCsr);
    if( rc==SQLITE_OK && pTab->bSwarm ){
      pCsr->iTab++;
      if( pCsr->iTab<pTab->nSrc ){
        UnionSrc *pSrc = &pTab->aSrc[pCsr->iTab];
        if( pCsr->iMaxRowid>=pSrc->iMin ){

          rc = unionOpenDatabase(pTab, pCsr->iTab, &pTab->base.zErrMsg);
          pCsr->pStmt = unionPreparePrintf(&rc, &pTab->base.zErrMsg, pSrc->db,
              "SELECT rowid, * FROM %Q %s %lld",
              pSrc->zTab,
              (pSrc->iMax>pCsr->iMaxRowid ? "WHERE _rowid_ <=" : "-- "),
              pCsr->iMaxRowid
          );
          if( rc==SQLITE_OK ){
            assert( pCsr->pStmt );
            unionIncrRefcount(pTab, pCsr->iTab);
            rc = SQLITE_ROW;
          }
        }
      }
    }
  }

  return rc;
}
