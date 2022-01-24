#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_26__ {scalar_t__ pVtab; } ;
typedef  TYPE_3__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int i64 ;
struct TYPE_30__ {int iDepth; } ;
struct TYPE_29__ {int /*<<< orphan*/  f; } ;
struct TYPE_25__ {int /*<<< orphan*/  rValue; } ;
struct TYPE_24__ {int /*<<< orphan*/ * pVtab; } ;
struct TYPE_28__ {int iStrategy; int atEOF; int nConstraint; char op; int iCoord; int bPoint; int /*<<< orphan*/ ** aNode; TYPE_2__ u; struct TYPE_28__* anQueue; struct TYPE_28__* aConstraint; int /*<<< orphan*/ * pReadAux; TYPE_1__ base; int /*<<< orphan*/  aPoint; } ;
struct TYPE_27__ {int id; void* eWithin; scalar_t__ iCell; } ;
typedef  TYPE_4__ RtreeSearchPoint ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  TYPE_5__ RtreeCursor ;
typedef  TYPE_6__ RtreeCoord ;
typedef  TYPE_5__ RtreeConstraint ;
typedef  TYPE_8__ Rtree ;

/* Variables and functions */
 void* PARTLY_WITHIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  RTREE_ZERO ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_8__*,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_8__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_8__*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*) ; 
 TYPE_4__* FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(
  sqlite3_vtab_cursor *pVtabCursor,     /* The cursor to initialize */
  int idxNum,                           /* Query plan */
  const char *idxStr,                   /* Not Used */
  int argc, sqlite3_value **argv        /* Parameters to the query plan */
){
  Rtree *pRtree = (Rtree *)pVtabCursor->pVtab;
  RtreeCursor *pCsr = (RtreeCursor *)pVtabCursor;
  RtreeNode *pRoot = 0;
  int rc = SQLITE_OK;
  int iCell = 0;
  sqlite3_stmt *pStmt;

  FUNC9(pRtree);

  /* Reset the cursor to the same state as rtreeOpen() leaves it in. */
  FUNC3(pCsr);
  FUNC13(pCsr->aPoint);
  pStmt = pCsr->pReadAux;
  FUNC5(pCsr, 0, sizeof(RtreeCursor));
  pCsr->base.pVtab = (sqlite3_vtab*)pRtree;
  pCsr->pReadAux = pStmt;

  pCsr->iStrategy = idxNum;
  if( idxNum==1 ){
    /* Special case - lookup by rowid. */
    RtreeNode *pLeaf;        /* Leaf on which the required cell resides */
    RtreeSearchPoint *p;     /* Search point for the leaf */
    i64 iRowid = FUNC15(argv[0]);
    i64 iNode = 0;
    rc = FUNC2(pRtree, iRowid, &pLeaf, &iNode);
    if( rc==SQLITE_OK && pLeaf!=0 ){
      p = FUNC11(pCsr, RTREE_ZERO, 0);
      FUNC1( p!=0 );  /* Always returns pCsr->sPoint */
      pCsr->aNode[0] = pLeaf;
      p->id = iNode;
      p->eWithin = PARTLY_WITHIN;
      rc = FUNC8(pRtree, pLeaf, iRowid, &iCell);
      p->iCell = (u8)iCell;
      FUNC0(pCsr, "PUSH-F1:");
    }else{
      pCsr->atEOF = 1;
    }
  }else{
    /* Normal case - r-tree scan. Set up the RtreeCursor.aConstraint array 
    ** with the configured constraints. 
    */
    rc = FUNC6(pRtree, 1, 0, &pRoot);
    if( rc==SQLITE_OK && idxNum<=3 ){
      RtreeCoord bbox[4];
      RtreeConstraint *p;
      FUNC1( argc==1 );
      FUNC4(0, argv[0], bbox, &rc);
      if( rc ){
        goto geopoly_filter_end;
      }
      pCsr->aConstraint = p = FUNC14(sizeof(RtreeConstraint)*4);
      pCsr->nConstraint = 4;
      if( p==0 ){
        rc = SQLITE_NOMEM;
      }else{
        FUNC5(pCsr->aConstraint, 0, sizeof(RtreeConstraint)*4);
        FUNC5(pCsr->anQueue, 0, sizeof(u32)*(pRtree->iDepth + 1));
        if( idxNum==2 ){
          /* Overlap query */
          p->op = 'B';
          p->iCoord = 0;
          p->u.rValue = bbox[1].f;
          p++;
          p->op = 'D';
          p->iCoord = 1;
          p->u.rValue = bbox[0].f;
          p++;
          p->op = 'B';
          p->iCoord = 2;
          p->u.rValue = bbox[3].f;
          p++;
          p->op = 'D';
          p->iCoord = 3;
          p->u.rValue = bbox[2].f;
        }else{
          /* Within query */
          p->op = 'D';
          p->iCoord = 0;
          p->u.rValue = bbox[0].f;
          p++;
          p->op = 'B';
          p->iCoord = 1;
          p->u.rValue = bbox[1].f;
          p++;
          p->op = 'D';
          p->iCoord = 2;
          p->u.rValue = bbox[2].f;
          p++;
          p->op = 'B';
          p->iCoord = 3;
          p->u.rValue = bbox[3].f;
        }
      }
    }
    if( rc==SQLITE_OK ){
      RtreeSearchPoint *pNew;
      pNew = FUNC11(pCsr, RTREE_ZERO, (u8)(pRtree->iDepth+1));
      if( pNew==0 ){
        rc = SQLITE_NOMEM;
        goto geopoly_filter_end;
      }
      pNew->id = 1;
      pNew->iCell = 0;
      pNew->eWithin = PARTLY_WITHIN;
      FUNC1( pCsr->bPoint==1 );
      pCsr->aNode[0] = pRoot;
      pRoot = 0;
      FUNC0(pCsr, "PUSH-Fm:");
      rc = FUNC12(pCsr);
    }
  }

geopoly_filter_end:
  FUNC7(pRtree, pRoot);
  FUNC10(pRtree);
  return rc;
}