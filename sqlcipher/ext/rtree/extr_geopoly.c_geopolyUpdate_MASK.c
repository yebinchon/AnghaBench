#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_18__ {int /*<<< orphan*/  zErrMsg; } ;
typedef  TYPE_1__ sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_21__ {int nVertex; int /*<<< orphan*/  hdr; } ;
struct TYPE_20__ {int iReinsertHeight; int nAux; int /*<<< orphan*/ * pWriteAux; int /*<<< orphan*/  db; int /*<<< orphan*/ * pReadRowid; scalar_t__ nNodeRef; } ;
struct TYPE_19__ {int /*<<< orphan*/  iRowid; int /*<<< orphan*/  aCoord; } ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  TYPE_2__ RtreeCell ;
typedef  TYPE_3__ Rtree ;
typedef  TYPE_4__ GeoPoly ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int SQLITE_ERROR ; 
 int SQLITE_LOCKED_VTAB ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_REPLACE ; 
 int SQLITE_ROW ; 
 scalar_t__ SQLITE_TEXT ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(
  sqlite3_vtab *pVtab, 
  int nData, 
  sqlite3_value **aData, 
  sqlite_int64 *pRowid
){
  Rtree *pRtree = (Rtree *)pVtab;
  int rc = SQLITE_OK;
  RtreeCell cell;                 /* New cell to insert if nData>1 */
  i64 oldRowid;                   /* The old rowid */
  int oldRowidValid;              /* True if oldRowid is valid */
  i64 newRowid;                   /* The new rowid */
  int newRowidValid;              /* True if newRowid is valid */
  int coordChange = 0;            /* Change in coordinates */

  if( pRtree->nNodeRef ){
    /* Unable to write to the btree while another cursor is reading from it,
    ** since the write might do a rebalance which would disrupt the read
    ** cursor. */
    return SQLITE_LOCKED_VTAB;
  }
  FUNC9(pRtree);
  FUNC1(nData>=1);

  oldRowidValid = FUNC21(aData[0])!=SQLITE_NULL;;
  oldRowid = oldRowidValid ? FUNC19(aData[0]) : 0;
  newRowidValid = nData>1 && FUNC21(aData[1])!=SQLITE_NULL;
  newRowid = newRowidValid ? FUNC19(aData[1]) : 0;
  cell.iRowid = newRowid;

  if( nData>1                                 /* not a DELETE */
   && (!oldRowidValid                         /* INSERT */
        || !FUNC20(aData[2])  /* UPDATE _shape */
        || oldRowid!=newRowid)                /* Rowid change */
  ){
    FUNC2(0, aData[2], cell.aCoord, &rc);
    if( rc ){
      if( rc==SQLITE_ERROR ){
        pVtab->zErrMsg =
          FUNC16("_shape does not contain a valid polygon");
      }
      goto geopoly_update_end;
    }
    coordChange = 1;

    /* If a rowid value was supplied, check if it is already present in 
    ** the table. If so, the constraint has failed. */
    if( newRowidValid && (!oldRowidValid || oldRowid!=newRowid) ){
      int steprc;
      FUNC12(pRtree->pReadRowid, 1, cell.iRowid);
      steprc = FUNC18(pRtree->pReadRowid);
      rc = FUNC17(pRtree->pReadRowid);
      if( SQLITE_ROW==steprc ){
        if( FUNC22(pRtree->db)==SQLITE_REPLACE ){
          rc = FUNC6(pRtree, cell.iRowid);
        }else{
          rc = FUNC5(pRtree, 0);
        }
      }
    }
  }

  /* If aData[0] is not an SQL NULL value, it is the rowid of a
  ** record to delete from the r-tree table. The following block does
  ** just that.
  */
  if( rc==SQLITE_OK && (nData==1 || (coordChange && oldRowidValid)) ){
    rc = FUNC6(pRtree, oldRowid);
  }

  /* If the aData[] array contains more than one element, elements
  ** (aData[2]..aData[argc-1]) contain a new record to insert into
  ** the r-tree structure.
  */
  if( rc==SQLITE_OK && nData>1 && coordChange ){
    /* Insert the new record into the r-tree */
    RtreeNode *pLeaf = 0;
    if( !newRowidValid ){
      rc = FUNC8(pRtree, &cell.iRowid);
    }
    *pRowid = cell.iRowid;
    if( rc==SQLITE_OK ){
      rc = FUNC0(pRtree, &cell, 0, &pLeaf);
    }
    if( rc==SQLITE_OK ){
      int rc2;
      pRtree->iReinsertHeight = -1;
      rc = FUNC7(pRtree, pLeaf, &cell, 0);
      rc2 = FUNC4(pRtree, pLeaf);
      if( rc==SQLITE_OK ){
        rc = rc2;
      }
    }
  }

  /* Change the data */
  if( rc==SQLITE_OK && nData>1 ){
    sqlite3_stmt *pUp = pRtree->pWriteAux;
    int jj;
    int nChange = 0;
    FUNC12(pUp, 1, cell.iRowid);
    FUNC1( pRtree->nAux>=1 );
    if( FUNC20(aData[2]) ){
      FUNC13(pUp, 2);
    }else{
      GeoPoly *p = 0;
      if( FUNC21(aData[2])==SQLITE_TEXT
       && (p = FUNC3(0, aData[2], &rc))!=0
       && rc==SQLITE_OK
      ){
        FUNC11(pUp, 2, p->hdr, 4+8*p->nVertex, SQLITE_TRANSIENT);
      }else{
        FUNC14(pUp, 2, aData[2]);
      }
      FUNC15(p);
      nChange = 1;
    }
    for(jj=1; jj<pRtree->nAux; jj++){
      nChange++;
      FUNC14(pUp, jj+2, aData[jj+2]);
    }
    if( nChange ){
      FUNC18(pUp);
      rc = FUNC17(pUp);
    }
  }

geopoly_update_end:
  FUNC10(pRtree);
  return rc;
}