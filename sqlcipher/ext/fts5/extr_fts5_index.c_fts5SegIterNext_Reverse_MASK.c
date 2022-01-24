#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ i64 ;
struct TYPE_14__ {TYPE_2__* pConfig; } ;
struct TYPE_13__ {int flags; scalar_t__ pNextLeaf; size_t iRowidOffset; int iLeafOffset; int* aRowidOffset; int /*<<< orphan*/  iRowid; scalar_t__ nPos; TYPE_1__* pLeaf; } ;
struct TYPE_12__ {scalar_t__ eDetail; } ;
struct TYPE_11__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_3__ Fts5SegIter ;
typedef  TYPE_4__ Fts5Index ;

/* Variables and functions */
 scalar_t__ FTS5_DETAIL_NONE ; 
 int FTS5_SEGITER_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5SegIter *pIter,             /* Iterator to advance */
  int *pbUnused                   /* Unused */
){
  FUNC1( pIter->flags & FTS5_SEGITER_REVERSE );
  FUNC1( pIter->pNextLeaf==0 );
  FUNC0(pbUnused);

  if( pIter->iRowidOffset>0 ){
    u8 *a = pIter->pLeaf->p;
    int iOff;
    i64 iDelta;

    pIter->iRowidOffset--;
    pIter->iLeafOffset = pIter->aRowidOffset[pIter->iRowidOffset];
    FUNC3(p, pIter);
    iOff = pIter->iLeafOffset;
    if( p->pConfig->eDetail!=FTS5_DETAIL_NONE ){
      iOff += pIter->nPos;
    }
    FUNC2(&a[iOff], (u64*)&iDelta);
    pIter->iRowid -= iDelta;
  }else{
    FUNC4(p, pIter);
  }
}