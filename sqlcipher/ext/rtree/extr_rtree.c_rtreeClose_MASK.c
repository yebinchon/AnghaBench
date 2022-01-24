#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
struct TYPE_11__ {scalar_t__ nCursor; } ;
struct TYPE_10__ {int /*<<< orphan*/ * aNode; struct TYPE_10__* aPoint; int /*<<< orphan*/  pReadAux; } ;
typedef  TYPE_2__ RtreeCursor ;
typedef  TYPE_3__ Rtree ;

/* Variables and functions */
 int RTREE_CACHE_SZ ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(sqlite3_vtab_cursor *cur){
  Rtree *pRtree = (Rtree *)(cur->pVtab);
  int ii;
  RtreeCursor *pCsr = (RtreeCursor *)cur;
  FUNC0( pRtree->nCursor>0 );
  FUNC1(pCsr);
  FUNC4(pCsr->pReadAux);
  FUNC5(pCsr->aPoint);
  for(ii=0; ii<RTREE_CACHE_SZ; ii++) FUNC3(pRtree, pCsr->aNode[ii]);
  FUNC5(pCsr);
  pRtree->nCursor--;
  FUNC2(pRtree);
  return SQLITE_OK;
}