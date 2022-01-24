#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  void* u32 ;
struct TYPE_12__ {scalar_t__ iTransId; void* iRoot; } ;
struct TYPE_13__ {TYPE_1__ root; } ;
struct TYPE_14__ {TYPE_2__ treehdr; int /*<<< orphan*/  rollback; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_3__ lsm_db ;
struct TYPE_15__ {scalar_t__ iV2; void* iV2Ptr; scalar_t__ iV2Child; void** aiChildPtr; } ;
typedef  TYPE_4__ TreeNode ;
struct TYPE_16__ {size_t iNode; int* aiCell; TYPE_4__** apTreeNode; } ;
typedef  TYPE_5__ TreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,TYPE_4__*,void**,int*) ; 
 void* FUNC2 (TYPE_4__*,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC4(lsm_db *pDb, TreeCursor *pCsr, u32 iNew){
  int rc = LSM_OK;
  if( pCsr->iNode<0 ){
    /* iNew is the new root node */
    pDb->treehdr.root.iRoot = iNew;
  }else{
    /* If this node already has version 2 content, allocate a copy and
    ** update the copy with the new pointer value. Otherwise, store the
    ** new pointer as v2 data within the current node structure.  */

    TreeNode *p;                  /* The node to be modified */
    int iChildPtr;                /* apChild[] entry to modify */

    p = pCsr->apTreeNode[pCsr->iNode];
    iChildPtr = pCsr->aiCell[pCsr->iNode];

    if( p->iV2 ){
      /* The "allocate new TreeNode" option */
      u32 iCopy;
      TreeNode *pCopy;
      pCopy = FUNC1(pDb, p, &iCopy, &rc);
      if( pCopy ){
        FUNC0( rc==LSM_OK );
        pCopy->aiChildPtr[iChildPtr] = iNew;
        pCsr->iNode--;
        rc = FUNC4(pDb, pCsr, iCopy);
      }
    }else{
      /* The "v2 data" option */
      u32 iPtr;
      FUNC0( pDb->treehdr.root.iTransId>0 );

      if( pCsr->iNode ){
        iPtr = FUNC2(
            pCsr->apTreeNode[pCsr->iNode-1], 
            pDb->treehdr.root.iTransId, pCsr->aiCell[pCsr->iNode-1]
        );
      }else{
        iPtr = pDb->treehdr.root.iRoot;
      }
      rc = FUNC3(pDb->pEnv, &pDb->rollback, iPtr);

      if( rc==LSM_OK ){
        p->iV2 = pDb->treehdr.root.iTransId;
        p->iV2Child = (u8)iChildPtr;
        p->iV2Ptr = iNew;
      }
    }
  }

  return rc;
}