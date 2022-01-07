
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
struct TYPE_16__ {int nDim2; scalar_t__ eCoordType; int iReinsertHeight; int nAux; int * pWriteAux; int db; int * pReadRowid; scalar_t__ nNodeRef; } ;
struct TYPE_15__ {scalar_t__ iRowid; TYPE_1__* aCoord; } ;
struct TYPE_14__ {scalar_t__ f; scalar_t__ i; } ;
typedef int RtreeNode ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;


 int ChooseLeaf (TYPE_3__*,TYPE_2__*,int ,int **) ;
 scalar_t__ RTREE_COORD_REAL32 ;
 int SQLITE_LOCKED_VTAB ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_REPLACE ;
 int SQLITE_ROW ;
 int assert (int) ;
 int nodeRelease (TYPE_3__*,int *) ;
 int rtreeConstraintError (TYPE_3__*,int) ;
 int rtreeDeleteRowid (TYPE_3__*,scalar_t__) ;
 int rtreeInsertCell (TYPE_3__*,int *,TYPE_2__*,int ) ;
 int rtreeNewRowid (TYPE_3__*,scalar_t__*) ;
 int rtreeReference (TYPE_3__*) ;
 int rtreeRelease (TYPE_3__*) ;
 scalar_t__ rtreeValueDown (int *) ;
 scalar_t__ rtreeValueUp (int *) ;
 int sqlite3_bind_int64 (int *,int,scalar_t__) ;
 int sqlite3_bind_value (int *,int,int *) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;
 void* sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 scalar_t__ sqlite3_vtab_on_conflict (int ) ;

__attribute__((used)) static int rtreeUpdate(
  sqlite3_vtab *pVtab,
  int nData,
  sqlite3_value **aData,
  sqlite_int64 *pRowid
){
  Rtree *pRtree = (Rtree *)pVtab;
  int rc = SQLITE_OK;
  RtreeCell cell;
  int bHaveRowid = 0;

  if( pRtree->nNodeRef ){



    return SQLITE_LOCKED_VTAB;
  }
  rtreeReference(pRtree);
  assert(nData>=1);

  cell.iRowid = 0;
  if( nData>1 ){
    int ii;
    int nn = nData - 4;

    if( nn > pRtree->nDim2 ) nn = pRtree->nDim2;
    if( pRtree->eCoordType==RTREE_COORD_REAL32 ){
      for(ii=0; ii<nn; ii+=2){
        cell.aCoord[ii].f = rtreeValueDown(aData[ii+3]);
        cell.aCoord[ii+1].f = rtreeValueUp(aData[ii+4]);
        if( cell.aCoord[ii].f>cell.aCoord[ii+1].f ){
          rc = rtreeConstraintError(pRtree, ii+1);
          goto constraint;
        }
      }
    }else

    {
      for(ii=0; ii<nn; ii+=2){
        cell.aCoord[ii].i = sqlite3_value_int(aData[ii+3]);
        cell.aCoord[ii+1].i = sqlite3_value_int(aData[ii+4]);
        if( cell.aCoord[ii].i>cell.aCoord[ii+1].i ){
          rc = rtreeConstraintError(pRtree, ii+1);
          goto constraint;
        }
      }
    }



    if( sqlite3_value_type(aData[2])!=SQLITE_NULL ){
      cell.iRowid = sqlite3_value_int64(aData[2]);
      if( sqlite3_value_type(aData[0])==SQLITE_NULL
       || sqlite3_value_int64(aData[0])!=cell.iRowid
      ){
        int steprc;
        sqlite3_bind_int64(pRtree->pReadRowid, 1, cell.iRowid);
        steprc = sqlite3_step(pRtree->pReadRowid);
        rc = sqlite3_reset(pRtree->pReadRowid);
        if( SQLITE_ROW==steprc ){
          if( sqlite3_vtab_on_conflict(pRtree->db)==SQLITE_REPLACE ){
            rc = rtreeDeleteRowid(pRtree, cell.iRowid);
          }else{
            rc = rtreeConstraintError(pRtree, 0);
            goto constraint;
          }
        }
      }
      bHaveRowid = 1;
    }
  }





  if( sqlite3_value_type(aData[0])!=SQLITE_NULL ){
    rc = rtreeDeleteRowid(pRtree, sqlite3_value_int64(aData[0]));
  }





  if( rc==SQLITE_OK && nData>1 ){

    RtreeNode *pLeaf = 0;


    if( bHaveRowid==0 ){
      rc = rtreeNewRowid(pRtree, &cell.iRowid);
    }
    *pRowid = cell.iRowid;

    if( rc==SQLITE_OK ){
      rc = ChooseLeaf(pRtree, &cell, 0, &pLeaf);
    }
    if( rc==SQLITE_OK ){
      int rc2;
      pRtree->iReinsertHeight = -1;
      rc = rtreeInsertCell(pRtree, pLeaf, &cell, 0);
      rc2 = nodeRelease(pRtree, pLeaf);
      if( rc==SQLITE_OK ){
        rc = rc2;
      }
    }
    if( rc==SQLITE_OK && pRtree->nAux ){
      sqlite3_stmt *pUp = pRtree->pWriteAux;
      int jj;
      sqlite3_bind_int64(pUp, 1, *pRowid);
      for(jj=0; jj<pRtree->nAux; jj++){
        sqlite3_bind_value(pUp, jj+2, aData[pRtree->nDim2+3+jj]);
      }
      sqlite3_step(pUp);
      rc = sqlite3_reset(pUp);
    }
  }

constraint:
  rtreeRelease(pRtree);
  return rc;
}
