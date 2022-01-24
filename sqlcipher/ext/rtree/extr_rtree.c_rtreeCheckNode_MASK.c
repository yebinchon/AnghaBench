#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int i64 ;
struct TYPE_7__ {scalar_t__ nDim; int /*<<< orphan*/  nLeaf; int /*<<< orphan*/  nNonLeaf; } ;
typedef  TYPE_1__ RtreeCheck ;

/* Variables and functions */
 int RTREE_MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  RtreeCheck *pCheck,
  int iDepth,                     /* Depth of iNode (0==leaf) */
  u8 *aParent,                    /* Buffer containing parent coords */
  i64 iNode                       /* Node to check */
){
  u8 *aNode = 0;
  int nNode = 0;

  FUNC0( iNode==1 || aParent!=0 );
  FUNC0( pCheck->nDim>0 );

  aNode = FUNC5(pCheck, iNode, &nNode);
  if( aNode ){
    if( nNode<4 ){
      FUNC3(pCheck, 
          "Node %lld is too small (%d bytes)", iNode, nNode
      );
    }else{
      int nCell;                  /* Number of cells on page */
      int i;                      /* Used to iterate through cells */
      if( aParent==0 ){
        iDepth = FUNC1(aNode);
        if( iDepth>RTREE_MAX_DEPTH ){
          FUNC3(pCheck, "Rtree depth out of range (%d)", iDepth);
          FUNC7(aNode);
          return;
        }
      }
      nCell = FUNC1(&aNode[2]);
      if( (4 + nCell*(8 + pCheck->nDim*2*4))>nNode ){
        FUNC3(pCheck, 
            "Node %lld is too small for cell count of %d (%d bytes)", 
            iNode, nCell, nNode
        );
      }else{
        for(i=0; i<nCell; i++){
          u8 *pCell = &aNode[4 + i*(8 + pCheck->nDim*2*4)];
          i64 iVal = FUNC2(pCell);
          FUNC4(pCheck, iNode, i, &pCell[8], aParent);

          if( iDepth>0 ){
            FUNC6(pCheck, 0, iVal, iNode);
            FUNC8(pCheck, iDepth-1, &pCell[8], iVal);
            pCheck->nNonLeaf++;
          }else{
            FUNC6(pCheck, 1, iVal, iNode);
            pCheck->nLeaf++;
          }
        }
      }
    }
    FUNC7(aNode);
  }
}