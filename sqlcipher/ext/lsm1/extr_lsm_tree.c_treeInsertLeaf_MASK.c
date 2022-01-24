#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  int /*<<< orphan*/  lsm_db ;
struct TYPE_8__ {int* aiKeyPtr; } ;
typedef  TYPE_1__ TreeNode ;
struct TYPE_9__ {int* aiKeyPtr; } ;
typedef  TYPE_2__ TreeLeaf ;
struct TYPE_10__ {size_t iNode; int /*<<< orphan*/ * aiCell; TYPE_1__** apTreeNode; } ;
typedef  TYPE_3__ TreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,void**,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,void*,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,void*) ; 

__attribute__((used)) static int FUNC4(
  lsm_db *pDb,                    /* Database handle */
  TreeCursor *pCsr,               /* Cursor structure */
  u32 iTreeKey,                   /* Key pointer to insert */
  int iSlot                       /* Insert key to the left of this */
){
  int rc = LSM_OK;                /* Return code */
  TreeNode *pLeaf = pCsr->apTreeNode[pCsr->iNode];
  TreeLeaf *pNew;
  u32 iNew;

  FUNC0( iSlot>=0 && iSlot<=4 );
  FUNC0( pCsr->iNode>0 );
  FUNC0( pLeaf->aiKeyPtr[1] );

  pCsr->iNode--;

  pNew = FUNC1(pDb, &iNew, &rc);
  if( pNew ){
    if( pLeaf->aiKeyPtr[0] && pLeaf->aiKeyPtr[2] ){
      /* The leaf is full. Split it in two. */
      TreeLeaf *pRight;
      u32 iRight;
      pRight = FUNC1(pDb, &iRight, &rc);
      if( pRight ){
        FUNC0( rc==LSM_OK );
        pNew->aiKeyPtr[1] = pLeaf->aiKeyPtr[0];
        pRight->aiKeyPtr[1] = pLeaf->aiKeyPtr[2];
        switch( iSlot ){
          case 0: pNew->aiKeyPtr[0] = iTreeKey; break;
          case 1: pNew->aiKeyPtr[2] = iTreeKey; break;
          case 2: pRight->aiKeyPtr[0] = iTreeKey; break;
          case 3: pRight->aiKeyPtr[2] = iTreeKey; break;
        }

        rc = FUNC2(pDb, pCsr, iNew, pLeaf->aiKeyPtr[1], iRight, 
            pCsr->aiCell[pCsr->iNode]
        );
      }
    }else{
      int iOut = 0;
      int i;
      for(i=0; i<4; i++){
        if( i==iSlot ) pNew->aiKeyPtr[iOut++] = iTreeKey;
        if( i<3 && pLeaf->aiKeyPtr[i] ){
          pNew->aiKeyPtr[iOut++] = pLeaf->aiKeyPtr[i];
        }
      }
      rc = FUNC3(pDb, pCsr, iNew);
    }
  }

  return rc;
}