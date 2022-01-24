#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_17__ {scalar_t__ szLeaf; int /*<<< orphan*/  nn; int /*<<< orphan*/  p; } ;
struct TYPE_14__ {int bEof; } ;
struct TYPE_16__ {int bRev; TYPE_2__ base; TYPE_1__* aFirst; TYPE_3__* aSeg; } ;
struct TYPE_15__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  iEndofDoclist; int /*<<< orphan*/  iRowid; int /*<<< orphan*/  iLeafOffset; TYPE_5__* pLeaf; } ;
struct TYPE_13__ {int iFirst; } ;
typedef  TYPE_3__ Fts5SegIter ;
typedef  TYPE_4__ Fts5Iter ;
typedef  int /*<<< orphan*/  Fts5Index ;
typedef  TYPE_5__ Fts5Data ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_SEGITER_ONETERM ; 
 int /*<<< orphan*/  FTS5_SEGITER_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(
  Fts5Index *p,                   /* FTS5 backend to iterate within */
  Fts5Data *pData,                /* Doclist to iterate through */
  int bDesc,                      /* True for descending rowid order */
  Fts5Iter **ppOut                /* New object */
){
  Fts5Iter *pNew;
  pNew = FUNC2(p, 2);
  if( pNew ){
    Fts5SegIter *pIter = &pNew->aSeg[1];

    pIter->flags = FTS5_SEGITER_ONETERM;
    if( pData->szLeaf>0 ){
      pIter->pLeaf = pData;
      pIter->iLeafOffset = FUNC1(pData->p, (u64*)&pIter->iRowid);
      pIter->iEndofDoclist = pData->nn;
      pNew->aFirst[1].iFirst = 1;
      if( bDesc ){
        pNew->bRev = 1;
        pIter->flags |= FTS5_SEGITER_REVERSE;
        FUNC4(p, pIter);
      }else{
        FUNC3(p, pIter);
      }
      pData = 0;
    }else{
      pNew->base.bEof = 1;
    }
    FUNC5(p, pIter);

    *ppOut = pNew;
  }

  FUNC0(pData);
}