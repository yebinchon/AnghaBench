
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_18__ {int zErrMsg; } ;
typedef TYPE_1__ sqlite3_vtab ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_21__ {int nVertex; int hdr; } ;
struct TYPE_20__ {int iReinsertHeight; int nAux; int * pWriteAux; int db; int * pReadRowid; scalar_t__ nNodeRef; } ;
struct TYPE_19__ {int iRowid; int aCoord; } ;
typedef int RtreeNode ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;
typedef TYPE_4__ GeoPoly ;


 int ChooseLeaf (TYPE_3__*,TYPE_2__*,int ,int **) ;
 int SQLITE_ERROR ;
 int SQLITE_LOCKED_VTAB ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_REPLACE ;
 int SQLITE_ROW ;
 scalar_t__ SQLITE_TEXT ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int geopolyBBox (int ,int *,int ,int*) ;
 TYPE_4__* geopolyFuncParam (int ,int *,int*) ;
 int nodeRelease (TYPE_3__*,int *) ;
 int rtreeConstraintError (TYPE_3__*,int ) ;
 int rtreeDeleteRowid (TYPE_3__*,int ) ;
 int rtreeInsertCell (TYPE_3__*,int *,TYPE_2__*,int ) ;
 int rtreeNewRowid (TYPE_3__*,int *) ;
 int rtreeReference (TYPE_3__*) ;
 int rtreeRelease (TYPE_3__*) ;
 int sqlite3_bind_blob (int *,int,int ,int,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_bind_value (int *,int,int *) ;
 int sqlite3_free (TYPE_4__*) ;
 int sqlite3_mprintf (char*) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_nochange (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 scalar_t__ sqlite3_vtab_on_conflict (int ) ;

__attribute__((used)) static int geopolyUpdate(
  sqlite3_vtab *pVtab,
  int nData,
  sqlite3_value **aData,
  sqlite_int64 *pRowid
){
  Rtree *pRtree = (Rtree *)pVtab;
  int rc = SQLITE_OK;
  RtreeCell cell;
  i64 oldRowid;
  int oldRowidValid;
  i64 newRowid;
  int newRowidValid;
  int coordChange = 0;

  if( pRtree->nNodeRef ){



    return SQLITE_LOCKED_VTAB;
  }
  rtreeReference(pRtree);
  assert(nData>=1);

  oldRowidValid = sqlite3_value_type(aData[0])!=SQLITE_NULL;;
  oldRowid = oldRowidValid ? sqlite3_value_int64(aData[0]) : 0;
  newRowidValid = nData>1 && sqlite3_value_type(aData[1])!=SQLITE_NULL;
  newRowid = newRowidValid ? sqlite3_value_int64(aData[1]) : 0;
  cell.iRowid = newRowid;

  if( nData>1
   && (!oldRowidValid
        || !sqlite3_value_nochange(aData[2])
        || oldRowid!=newRowid)
  ){
    geopolyBBox(0, aData[2], cell.aCoord, &rc);
    if( rc ){
      if( rc==SQLITE_ERROR ){
        pVtab->zErrMsg =
          sqlite3_mprintf("_shape does not contain a valid polygon");
      }
      goto geopoly_update_end;
    }
    coordChange = 1;



    if( newRowidValid && (!oldRowidValid || oldRowid!=newRowid) ){
      int steprc;
      sqlite3_bind_int64(pRtree->pReadRowid, 1, cell.iRowid);
      steprc = sqlite3_step(pRtree->pReadRowid);
      rc = sqlite3_reset(pRtree->pReadRowid);
      if( SQLITE_ROW==steprc ){
        if( sqlite3_vtab_on_conflict(pRtree->db)==SQLITE_REPLACE ){
          rc = rtreeDeleteRowid(pRtree, cell.iRowid);
        }else{
          rc = rtreeConstraintError(pRtree, 0);
        }
      }
    }
  }





  if( rc==SQLITE_OK && (nData==1 || (coordChange && oldRowidValid)) ){
    rc = rtreeDeleteRowid(pRtree, oldRowid);
  }





  if( rc==SQLITE_OK && nData>1 && coordChange ){

    RtreeNode *pLeaf = 0;
    if( !newRowidValid ){
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
  }


  if( rc==SQLITE_OK && nData>1 ){
    sqlite3_stmt *pUp = pRtree->pWriteAux;
    int jj;
    int nChange = 0;
    sqlite3_bind_int64(pUp, 1, cell.iRowid);
    assert( pRtree->nAux>=1 );
    if( sqlite3_value_nochange(aData[2]) ){
      sqlite3_bind_null(pUp, 2);
    }else{
      GeoPoly *p = 0;
      if( sqlite3_value_type(aData[2])==SQLITE_TEXT
       && (p = geopolyFuncParam(0, aData[2], &rc))!=0
       && rc==SQLITE_OK
      ){
        sqlite3_bind_blob(pUp, 2, p->hdr, 4+8*p->nVertex, SQLITE_TRANSIENT);
      }else{
        sqlite3_bind_value(pUp, 2, aData[2]);
      }
      sqlite3_free(p);
      nChange = 1;
    }
    for(jj=1; jj<pRtree->nAux; jj++){
      nChange++;
      sqlite3_bind_value(pUp, jj+2, aData[jj+2]);
    }
    if( nChange ){
      sqlite3_step(pUp);
      rc = sqlite3_reset(pUp);
    }
  }

geopoly_update_end:
  rtreeRelease(pRtree);
  return rc;
}
