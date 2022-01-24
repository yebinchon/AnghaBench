#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ sqlite3_rtree_dbl ;
struct TYPE_26__ {scalar_t__ eCoordType; int nBytesPerCell; } ;
struct TYPE_25__ {scalar_t__ op; } ;
struct TYPE_24__ {int nConstraint; int atEOF; TYPE_4__* aConstraint; } ;
struct TYPE_23__ {scalar_t__* zData; } ;
struct TYPE_22__ {int iLevel; int iCell; int /*<<< orphan*/  id; scalar_t__ eWithin; } ;
typedef  TYPE_1__ RtreeSearchPoint ;
typedef  TYPE_2__ RtreeNode ;
typedef  TYPE_3__ RtreeCursor ;
typedef  TYPE_4__ RtreeConstraint ;
typedef  TYPE_5__ Rtree ;

/* Variables and functions */
 int FULLY_WITHIN ; 
 int FUNC0 (TYPE_2__*) ; 
 int NOT_WITHIN ; 
 scalar_t__ RTREE_COORD_INT32 ; 
 scalar_t__ RTREE_MATCH ; 
 TYPE_5__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 scalar_t__ RTREE_ZERO ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int FUNC5 (TYPE_4__*,int,scalar_t__*,TYPE_1__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,scalar_t__*,int*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,scalar_t__*,int*) ; 
 TYPE_1__* FUNC9 (TYPE_3__*) ; 
 TYPE_1__* FUNC10 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC12(RtreeCursor *pCur){
  RtreeSearchPoint *p;
  Rtree *pRtree = FUNC1(pCur);
  RtreeNode *pNode;
  int eWithin;
  int rc = SQLITE_OK;
  int nCell;
  int nConstraint = pCur->nConstraint;
  int ii;
  int eInt;
  RtreeSearchPoint x;

  eInt = pRtree->eCoordType==RTREE_COORD_INT32;
  while( (p = FUNC9(pCur))!=0 && p->iLevel>0 ){
    pNode = FUNC7(pCur, &rc);
    if( rc ) return rc;
    nCell = FUNC0(pNode);
    FUNC3( nCell<200 );
    while( p->iCell<nCell ){
      sqlite3_rtree_dbl rScore = (sqlite3_rtree_dbl)-1;
      u8 *pCellData = pNode->zData + (4+pRtree->nBytesPerCell*p->iCell);
      eWithin = FULLY_WITHIN;
      for(ii=0; ii<nConstraint; ii++){
        RtreeConstraint *pConstraint = pCur->aConstraint + ii;
        if( pConstraint->op>=RTREE_MATCH ){
          rc = FUNC5(pConstraint, eInt, pCellData, p,
                                       &rScore, &eWithin);
          if( rc ) return rc;
        }else if( p->iLevel==1 ){
          FUNC6(pConstraint, eInt, pCellData, &eWithin);
        }else{
          FUNC8(pConstraint, eInt, pCellData, &eWithin);
        }
        if( eWithin==NOT_WITHIN ) break;
      }
      p->iCell++;
      if( eWithin==NOT_WITHIN ) continue;
      x.iLevel = p->iLevel - 1;
      if( x.iLevel ){
        x.id = FUNC4(pCellData);
        x.iCell = 0;
      }else{
        x.id = p->id;
        x.iCell = p->iCell - 1;
      }
      if( p->iCell>=nCell ){
        FUNC2(pCur, "POP-S:");
        FUNC11(pCur);
      }
      if( rScore<RTREE_ZERO ) rScore = RTREE_ZERO;
      p = FUNC10(pCur, rScore, x.iLevel);
      if( p==0 ) return SQLITE_NOMEM;
      p->eWithin = (u8)eWithin;
      p->id = x.id;
      p->iCell = x.iCell;
      FUNC2(pCur, "PUSH-S:");
      break;
    }
    if( p->iCell>=nCell ){
      FUNC2(pCur, "POP-Se:");
      FUNC11(pCur);
    }
  }
  pCur->atEOF = p==0;
  return SQLITE_OK;
}