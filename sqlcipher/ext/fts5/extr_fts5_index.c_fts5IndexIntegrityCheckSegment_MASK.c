#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ i64 ;
struct TYPE_29__ {int iLeaf; } ;
struct TYPE_28__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
struct TYPE_27__ {scalar_t__ nn; scalar_t__ szLeaf; int /*<<< orphan*/ * p; } ;
struct TYPE_26__ {int rc; TYPE_4__* pConfig; } ;
struct TYPE_25__ {int pgnoFirst; int pgnoLast; int iSegid; } ;
typedef  TYPE_1__ Fts5StructureSegment ;
typedef  TYPE_2__ Fts5Index ;
typedef  int /*<<< orphan*/  Fts5DlidxIter ;
typedef  TYPE_3__ Fts5Data ;
typedef  TYPE_4__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 void* FTS5_CORRUPT ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 TYPE_3__* FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int FUNC17 (TYPE_3__*) ; 
 TYPE_3__* FUNC18 (TYPE_2__*,scalar_t__) ; 
 int FUNC19 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int,int) ; 
 TYPE_5__ iter ; 
 int FUNC21 (int /*<<< orphan*/ *,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC27(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5StructureSegment *pSeg      /* Segment to check internal consistency */
){
  Fts5Config *pConfig = p->pConfig;
  sqlite3_stmt *pStmt = 0;
  int rc2;
  int iIdxPrevLeaf = pSeg->pgnoFirst-1;
  int iDlidxPrevLeaf = pSeg->pgnoLast;

  if( pSeg->pgnoFirst==0 ) return;

  FUNC14(p, &pStmt, FUNC25(
      "SELECT segid, term, (pgno>>1), (pgno&1) FROM %Q.'%q_idx' WHERE segid=%d",
      pConfig->zDb, pConfig->zName, pSeg->iSegid
  ));

  /* Iterate through the b-tree hierarchy.  */
  while( p->rc==SQLITE_OK && SQLITE_ROW==FUNC26(pStmt) ){
    i64 iRow;                     /* Rowid for this leaf */
    Fts5Data *pLeaf;              /* Data for this leaf */

    int nIdxTerm = FUNC21(pStmt, 1);
    const char *zIdxTerm = (const char*)FUNC23(pStmt, 1);
    int iIdxLeaf = FUNC22(pStmt, 2);
    int bIdxDlidx = FUNC22(pStmt, 3);

    /* If the leaf in question has already been trimmed from the segment, 
    ** ignore this b-tree entry. Otherwise, load it into memory. */
    if( iIdxLeaf<pSeg->pgnoFirst ) continue;
    iRow = FUNC1(pSeg->iSegid, iIdxLeaf);
    pLeaf = FUNC18(p, iRow);
    if( pLeaf==0 ) break;

    /* Check that the leaf contains at least one term, and that it is equal
    ** to or larger than the split-key in zIdxTerm.  Also check that if there
    ** is also a rowid pointer within the leaf page header, it points to a
    ** location before the term.  */
    if( pLeaf->nn<=pLeaf->szLeaf ){
      p->rc = FTS5_CORRUPT;
    }else{
      int iOff;                   /* Offset of first term on leaf */
      int iRowidOff;              /* Offset of first rowid on leaf */
      int nTerm;                  /* Size of term on leaf in bytes */
      int res;                    /* Comparison of term and split-key */

      iOff = FUNC17(pLeaf);
      iRowidOff = FUNC16(pLeaf);
      if( iRowidOff>=iOff || iOff>=pLeaf->szLeaf ){
        p->rc = FTS5_CORRUPT;
      }else{
        iOff += FUNC12(&pLeaf->p[iOff], nTerm);
        res = FUNC19(&pLeaf->p[iOff], zIdxTerm, FUNC2(nTerm, nIdxTerm));
        if( res==0 ) res = nTerm - nIdxTerm;
        if( res<0 ) p->rc = FTS5_CORRUPT;
      }

      FUNC15(p, pLeaf);
    }
    FUNC4(pLeaf);
    if( p->rc ) break;

    /* Now check that the iter.nEmpty leaves following the current leaf
    ** (a) exist and (b) contain no terms. */
    FUNC13(
        p, pSeg, iIdxPrevLeaf+1, iDlidxPrevLeaf+1, iIdxLeaf-1
    );
    if( p->rc ) break;

    /* If there is a doclist-index, check that it looks right. */
    if( bIdxDlidx ){
      Fts5DlidxIter *pDlidx = 0;  /* For iterating through doclist index */
      int iPrevLeaf = iIdxLeaf;
      int iSegid = pSeg->iSegid;
      int iPg = 0;
      i64 iKey;

      for(pDlidx=FUNC7(p, 0, iSegid, iIdxLeaf);
          FUNC5(p, pDlidx)==0;
          FUNC8(p, pDlidx)
      ){

        /* Check any rowid-less pages that occur before the current leaf. */
        for(iPg=iPrevLeaf+1; iPg<FUNC9(pDlidx); iPg++){
          iKey = FUNC1(iSegid, iPg);
          pLeaf = FUNC3(p, iKey);
          if( pLeaf ){
            if( FUNC16(pLeaf)!=0 ) p->rc = FTS5_CORRUPT;
            FUNC4(pLeaf);
          }
        }
        iPrevLeaf = FUNC9(pDlidx);

        /* Check that the leaf page indicated by the iterator really does
        ** contain the rowid suggested by the same. */
        iKey = FUNC1(iSegid, iPrevLeaf);
        pLeaf = FUNC3(p, iKey);
        if( pLeaf ){
          i64 iRowid;
          int iRowidOff = FUNC16(pLeaf);
          FUNC0(pLeaf);
          if( iRowidOff>=pLeaf->szLeaf ){
            p->rc = FTS5_CORRUPT;
          }else{
            FUNC11(&pLeaf->p[iRowidOff], (u64*)&iRowid);
            if( iRowid!=FUNC10(pDlidx) ) p->rc = FTS5_CORRUPT;
          }
          FUNC4(pLeaf);
        }
      }

      iDlidxPrevLeaf = iPg;
      FUNC6(pDlidx);
      FUNC20(p, iSegid, iIdxLeaf);
    }else{
      iDlidxPrevLeaf = pSeg->pgnoLast;
      /* TODO: Check there is no doclist index */
    }

    iIdxPrevLeaf = iIdxLeaf;
  }

  rc2 = FUNC24(pStmt);
  if( p->rc==SQLITE_OK ) p->rc = rc2;

  /* Page iter.iLeaf must now be the rightmost leaf-page in the segment */
#if 0
  if( p->rc==SQLITE_OK && iter.iLeaf!=pSeg->pgnoLast ){
    p->rc = FTS5_CORRUPT;
  }
#endif
}