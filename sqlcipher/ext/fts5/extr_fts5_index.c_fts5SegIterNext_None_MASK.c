#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ i64 ;
struct TYPE_18__ {scalar_t__ rc; int /*<<< orphan*/  pHash; TYPE_1__* pConfig; } ;
struct TYPE_17__ {int flags; int iLeafOffset; int iEndofDoclist; TYPE_12__* pLeaf; scalar_t__ iRowid; int /*<<< orphan*/  term; scalar_t__ pSeg; } ;
struct TYPE_16__ {scalar_t__ eDetail; } ;
struct TYPE_15__ {int szLeaf; int nn; int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ Fts5SegIter ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 scalar_t__ FTS5_DETAIL_NONE ; 
 int FTS5_SEGITER_ONETERM ; 
 int FTS5_SEGITER_REVERSE ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*) ; 

__attribute__((used)) static void FUNC14(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5SegIter *pIter,             /* Iterator to advance */
  int *pbNewTerm                  /* OUT: Set for new term */
){
  int iOff;

  FUNC1( p->rc==SQLITE_OK );
  FUNC1( (pIter->flags & FTS5_SEGITER_REVERSE)==0 );
  FUNC1( p->pConfig->eDetail==FTS5_DETAIL_NONE );

  FUNC0(pIter->pLeaf);
  iOff = pIter->iLeafOffset;

  /* Next entry is on the next page */
  if( pIter->pSeg && iOff>=pIter->pLeaf->szLeaf ){
    FUNC8(p, pIter);
    if( p->rc || pIter->pLeaf==0 ) return;
    pIter->iRowid = 0;
    iOff = 4;
  }

  if( iOff<pIter->iEndofDoclist ){
    /* Next entry is on the current page */
    i64 iDelta;
    iOff += FUNC10(&pIter->pLeaf->p[iOff], (u64*)&iDelta);
    pIter->iLeafOffset = iOff;
    pIter->iRowid += iDelta;
  }else if( (pIter->flags & FTS5_SEGITER_ONETERM)==0 ){
    if( pIter->pSeg ){
      int nKeep = 0;
      if( iOff!=FUNC5(pIter->pLeaf) ){
        iOff += FUNC4(&pIter->pLeaf->p[iOff], nKeep);
      }
      pIter->iLeafOffset = iOff;
      FUNC7(p, pIter, nKeep);
    }else{
      const u8 *pList = 0;
      const char *zTerm = 0;
      int nList;
      FUNC12(p->pHash);
      FUNC11(p->pHash, &zTerm, &pList, &nList);
      if( pList==0 ) goto next_none_eof;
      pIter->pLeaf->p = (u8*)pList;
      pIter->pLeaf->nn = nList;
      pIter->pLeaf->szLeaf = nList;
      pIter->iEndofDoclist = nList;
      FUNC9(&p->rc,&pIter->term, (int)FUNC13(zTerm), (u8*)zTerm);
      pIter->iLeafOffset = FUNC3(pList, (u64*)&pIter->iRowid);
    }

    if( pbNewTerm ) *pbNewTerm = 1;
  }else{
    goto next_none_eof;
  }

  FUNC6(p, pIter);

  return;
 next_none_eof:
  FUNC2(pIter->pLeaf);
  pIter->pLeaf = 0;
}