
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_13__ {int nAux; int zReadAuxSql; int db; } ;
struct TYPE_12__ {int bAuxValid; scalar_t__ pReadAux; } ;
struct TYPE_11__ {int iCell; } ;
typedef TYPE_2__ RtreeSearchPoint ;
typedef int RtreeNode ;
typedef TYPE_3__ RtreeCursor ;
typedef TYPE_4__ Rtree ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int nodeGetRowid (TYPE_4__*,int *,int ) ;
 int * rtreeNodeOfFirstSearchPoint (TYPE_3__*,int*) ;
 TYPE_2__* rtreeSearchPointFirst (TYPE_3__*) ;
 int sqlite3_bind_int64 (scalar_t__,int,int ) ;
 int sqlite3_column_value (scalar_t__,int) ;
 int sqlite3_prepare_v3 (int ,int ,int,int ,scalar_t__*,int ) ;
 int sqlite3_reset (scalar_t__) ;
 int sqlite3_result_value (int *,int ) ;
 int sqlite3_step (scalar_t__) ;
 scalar_t__ sqlite3_vtab_nochange (int *) ;

__attribute__((used)) static int geopolyColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  Rtree *pRtree = (Rtree *)cur->pVtab;
  RtreeCursor *pCsr = (RtreeCursor *)cur;
  RtreeSearchPoint *p = rtreeSearchPointFirst(pCsr);
  int rc = SQLITE_OK;
  RtreeNode *pNode = rtreeNodeOfFirstSearchPoint(pCsr, &rc);

  if( rc ) return rc;
  if( p==0 ) return SQLITE_OK;
  if( i==0 && sqlite3_vtab_nochange(ctx) ) return SQLITE_OK;
  if( i<=pRtree->nAux ){
    if( !pCsr->bAuxValid ){
      if( pCsr->pReadAux==0 ){
        rc = sqlite3_prepare_v3(pRtree->db, pRtree->zReadAuxSql, -1, 0,
                                &pCsr->pReadAux, 0);
        if( rc ) return rc;
      }
      sqlite3_bind_int64(pCsr->pReadAux, 1,
          nodeGetRowid(pRtree, pNode, p->iCell));
      rc = sqlite3_step(pCsr->pReadAux);
      if( rc==SQLITE_ROW ){
        pCsr->bAuxValid = 1;
      }else{
        sqlite3_reset(pCsr->pReadAux);
        if( rc==SQLITE_DONE ) rc = SQLITE_OK;
        return rc;
      }
    }
    sqlite3_result_value(ctx, sqlite3_column_value(pCsr->pReadAux, i+2));
  }
  return SQLITE_OK;
}
