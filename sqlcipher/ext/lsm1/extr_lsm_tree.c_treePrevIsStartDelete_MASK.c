#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {int nHeight; } ;
struct TYPE_12__ {TYPE_1__ root; } ;
struct TYPE_13__ {TYPE_2__ treehdr; } ;
typedef  TYPE_3__ lsm_db ;
struct TYPE_14__ {scalar_t__* aiKeyPtr; } ;
typedef  TYPE_4__ TreeNode ;
struct TYPE_15__ {int flags; } ;
typedef  TYPE_5__ TreeKey ;
struct TYPE_16__ {int iNode; int* aiCell; TYPE_4__** apTreeNode; } ;
typedef  TYPE_6__ TreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int LSM_START_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(lsm_db *db, TreeCursor *pCsr){
  int iNode = pCsr->iNode;

  /* Cursor currently points to a leaf node. */
  FUNC0( (u32)pCsr->iNode==(db->treehdr.root.nHeight-1) );

  while( iNode>=0 ){
    TreeNode *pNode = pCsr->apTreeNode[iNode];
    int iCell = pCsr->aiCell[iNode]-1;
    if( iCell>=0 && pNode->aiKeyPtr[iCell] ){
      int rc = LSM_OK;
      TreeKey *pKey = FUNC1(db, pNode->aiKeyPtr[iCell]);
      FUNC0( rc==LSM_OK );
      return ((pKey->flags & LSM_START_DELETE) ? 1 : 0);
    }
    iNode--;
  }

  return 0;
}