#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_16__ {int nDim2; scalar_t__ eCoordType; int iReinsertHeight; int nAux; int /*<<< orphan*/ * pWriteAux; int /*<<< orphan*/  db; int /*<<< orphan*/ * pReadRowid; scalar_t__ nNodeRef; } ;
struct TYPE_15__ {scalar_t__ iRowid; TYPE_1__* aCoord; } ;
struct TYPE_14__ {scalar_t__ f; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  TYPE_2__ RtreeCell ;
typedef  TYPE_3__ Rtree ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ RTREE_COORD_REAL32 ; 
 int SQLITE_LOCKED_VTAB ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_REPLACE ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (TYPE_3__*,scalar_t__) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(
  sqlite3_vtab *pVtab, 
  int nData, 
  sqlite3_value **aData, 
  sqlite_int64 *pRowid
){
  Rtree *pRtree = (Rtree *)pVtab;
  int rc = SQLITE_OK;
  RtreeCell cell;                 /* New cell to insert if nData>1 */
  int bHaveRowid = 0;             /* Set to 1 after new rowid is determined */

  if( pRtree->nNodeRef ){
    /* Unable to write to the btree while another cursor is reading from it,
    ** since the write might do a rebalance which would disrupt the read
    ** cursor. */
    return SQLITE_LOCKED_VTAB;
  }
  FUNC7(pRtree);
  FUNC1(nData>=1);

  cell.iRowid = 0;  /* Used only to suppress a compiler warning */

  /* Constraint handling. A write operation on an r-tree table may return
  ** SQLITE_CONSTRAINT for two reasons:
  **
  **   1. A duplicate rowid value, or
  **   2. The supplied data violates the "x2>=x1" constraint.
  **
  ** In the first case, if the conflict-handling mode is REPLACE, then
  ** the conflicting row can be removed before proceeding. In the second
  ** case, SQLITE_CONSTRAINT must be returned regardless of the
  ** conflict-handling mode specified by the user.
  */
  if( nData>1 ){
    int ii;
    int nn = nData - 4;

    if( nn > pRtree->nDim2 ) nn = pRtree->nDim2;
    /* Populate the cell.aCoord[] array. The first coordinate is aData[3].
    **
    ** NB: nData can only be less than nDim*2+3 if the rtree is mis-declared
    ** with "column" that are interpreted as table constraints.
    ** Example:  CREATE VIRTUAL TABLE bad USING rtree(x,y,CHECK(y>5));
    ** This problem was discovered after years of use, so we silently ignore
    ** these kinds of misdeclared tables to avoid breaking any legacy.
    */

#ifndef SQLITE_RTREE_INT_ONLY
    if( pRtree->eCoordType==RTREE_COORD_REAL32 ){
      for(ii=0; ii<nn; ii+=2){
        cell.aCoord[ii].f = FUNC9(aData[ii+3]);
        cell.aCoord[ii+1].f = FUNC10(aData[ii+4]);
        if( cell.aCoord[ii].f>cell.aCoord[ii+1].f ){
          rc = FUNC3(pRtree, ii+1);
          goto constraint;
        }
      }
    }else
#endif
    {
      for(ii=0; ii<nn; ii+=2){
        cell.aCoord[ii].i = FUNC15(aData[ii+3]);
        cell.aCoord[ii+1].i = FUNC15(aData[ii+4]);
        if( cell.aCoord[ii].i>cell.aCoord[ii+1].i ){
          rc = FUNC3(pRtree, ii+1);
          goto constraint;
        }
      }
    }

    /* If a rowid value was supplied, check if it is already present in 
    ** the table. If so, the constraint has failed. */
    if( FUNC17(aData[2])!=SQLITE_NULL ){
      cell.iRowid = FUNC16(aData[2]);
      if( FUNC17(aData[0])==SQLITE_NULL
       || FUNC16(aData[0])!=cell.iRowid
      ){
        int steprc;
        FUNC11(pRtree->pReadRowid, 1, cell.iRowid);
        steprc = FUNC14(pRtree->pReadRowid);
        rc = FUNC13(pRtree->pReadRowid);
        if( SQLITE_ROW==steprc ){
          if( FUNC18(pRtree->db)==SQLITE_REPLACE ){
            rc = FUNC4(pRtree, cell.iRowid);
          }else{
            rc = FUNC3(pRtree, 0);
            goto constraint;
          }
        }
      }
      bHaveRowid = 1;
    }
  }

  /* If aData[0] is not an SQL NULL value, it is the rowid of a
  ** record to delete from the r-tree table. The following block does
  ** just that.
  */
  if( FUNC17(aData[0])!=SQLITE_NULL ){
    rc = FUNC4(pRtree, FUNC16(aData[0]));
  }

  /* If the aData[] array contains more than one element, elements
  ** (aData[2]..aData[argc-1]) contain a new record to insert into
  ** the r-tree structure.
  */
  if( rc==SQLITE_OK && nData>1 ){
    /* Insert the new record into the r-tree */
    RtreeNode *pLeaf = 0;

    /* Figure out the rowid of the new row. */
    if( bHaveRowid==0 ){
      rc = FUNC6(pRtree, &cell.iRowid);
    }
    *pRowid = cell.iRowid;

    if( rc==SQLITE_OK ){
      rc = FUNC0(pRtree, &cell, 0, &pLeaf);
    }
    if( rc==SQLITE_OK ){
      int rc2;
      pRtree->iReinsertHeight = -1;
      rc = FUNC5(pRtree, pLeaf, &cell, 0);
      rc2 = FUNC2(pRtree, pLeaf);
      if( rc==SQLITE_OK ){
        rc = rc2;
      }
    }
    if( rc==SQLITE_OK && pRtree->nAux ){
      sqlite3_stmt *pUp = pRtree->pWriteAux;
      int jj;
      FUNC11(pUp, 1, *pRowid);
      for(jj=0; jj<pRtree->nAux; jj++){
        FUNC12(pUp, jj+2, aData[pRtree->nDim2+3+jj]);
      }
      FUNC14(pUp);
      rc = FUNC13(pUp);
    }
  }

constraint:
  FUNC8(pRtree);
  return rc;
}