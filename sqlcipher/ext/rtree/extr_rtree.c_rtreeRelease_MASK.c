#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nBusy; scalar_t__ nCursor; scalar_t__ nNodeRef; struct TYPE_5__* zReadAuxSql; int /*<<< orphan*/  pWriteAux; int /*<<< orphan*/  pDeleteParent; int /*<<< orphan*/  pWriteParent; int /*<<< orphan*/  pReadParent; int /*<<< orphan*/  pDeleteRowid; int /*<<< orphan*/  pWriteRowid; int /*<<< orphan*/  pReadRowid; int /*<<< orphan*/  pDeleteNode; int /*<<< orphan*/  pWriteNode; scalar_t__ bCorrupt; scalar_t__ inWrTrans; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(Rtree *pRtree){
  pRtree->nBusy--;
  if( pRtree->nBusy==0 ){
    pRtree->inWrTrans = 0;
    FUNC0( pRtree->nCursor==0 );
    FUNC1(pRtree);
    FUNC0( pRtree->nNodeRef==0 || pRtree->bCorrupt );
    FUNC2(pRtree->pWriteNode);
    FUNC2(pRtree->pDeleteNode);
    FUNC2(pRtree->pReadRowid);
    FUNC2(pRtree->pWriteRowid);
    FUNC2(pRtree->pDeleteRowid);
    FUNC2(pRtree->pReadParent);
    FUNC2(pRtree->pWriteParent);
    FUNC2(pRtree->pDeleteParent);
    FUNC2(pRtree->pWriteAux);
    FUNC3(pRtree->zReadAuxSql);
    FUNC3(pRtree);
  }
}