#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ nNodeRef; int iDepth; } ;
struct TYPE_10__ {scalar_t__ nRef; int iNode; struct TYPE_10__* pParent; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(Rtree *pRtree, RtreeNode *pNode){
  int rc = SQLITE_OK;
  if( pNode ){
    FUNC0( pNode->nRef>0 );
    FUNC0( pRtree->nNodeRef>0 );
    pNode->nRef--;
    if( pNode->nRef==0 ){
      pRtree->nNodeRef--;
      if( pNode->iNode==1 ){
        pRtree->iDepth = -1;
      }
      if( pNode->pParent ){
        rc = FUNC4(pRtree, pNode->pParent);
      }
      if( rc==SQLITE_OK ){
        rc = FUNC2(pRtree, pNode);
      }
      FUNC1(pRtree, pNode);
      FUNC3(pNode);
    }
  }
  return rc;
}