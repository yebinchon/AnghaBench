#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_25__ {scalar_t__ rc; } ;
struct TYPE_21__ {scalar_t__ bEof; } ;
struct TYPE_24__ {scalar_t__ bSkipEmpty; int /*<<< orphan*/  (* xSetOutputs ) (TYPE_4__*,TYPE_3__*) ;TYPE_2__* aFirst; TYPE_3__* aSeg; TYPE_1__ base; } ;
struct TYPE_23__ {scalar_t__ pLeaf; scalar_t__ nPos; int /*<<< orphan*/  (* xNext ) (TYPE_5__*,TYPE_3__*,int*) ;scalar_t__ pDlidx; } ;
struct TYPE_22__ {int iFirst; } ;
typedef  TYPE_3__ Fts5SegIter ;
typedef  TYPE_4__ Fts5Iter ;
typedef  TYPE_5__ Fts5Index ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC8(
  Fts5Index *p, 
  Fts5Iter *pIter,
  int bFrom,                      /* True if argument iFrom is valid */
  i64 iFrom                       /* Advance at least as far as this */
){
  int bUseFrom = bFrom;
  FUNC0( pIter->base.bEof==0 );
  while( p->rc==SQLITE_OK ){
    int iFirst = pIter->aFirst[1].iFirst;
    int bNewTerm = 0;
    Fts5SegIter *pSeg = &pIter->aSeg[iFirst];
    FUNC0( p->rc==SQLITE_OK );
    if( bUseFrom && pSeg->pDlidx ){
      FUNC5(p, pSeg, iFrom);
    }else{
      pSeg->xNext(p, pSeg, &bNewTerm);
    }

    if( pSeg->pLeaf==0 || bNewTerm 
     || FUNC2(pIter, iFirst, &pSeg)
    ){
      FUNC3(p, pIter, iFirst, 1);
      FUNC4(pIter);
      pSeg = &pIter->aSeg[pIter->aFirst[1].iFirst];
      if( pSeg->pLeaf==0 ) return;
    }

    FUNC1(p, pIter);
    FUNC0( pSeg==&pIter->aSeg[pIter->aFirst[1].iFirst] && pSeg->pLeaf );
    if( pIter->bSkipEmpty==0 || pSeg->nPos ){
      pIter->xSetOutputs(pIter, pSeg);
      return;
    }
    bUseFrom = 0;
  }
}