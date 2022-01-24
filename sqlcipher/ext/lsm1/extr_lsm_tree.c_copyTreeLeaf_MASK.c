#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  TreeNode ;
typedef  int /*<<< orphan*/  TreeLeaf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static TreeNode *FUNC2(
  lsm_db *pDb, 
  TreeLeaf *pOld, 
  u32 *piNew, 
  int *pRc
){
  TreeLeaf *pNew;
  pNew = FUNC1(pDb, piNew, pRc);
  if( pNew ){
    FUNC0(pNew, pOld, sizeof(TreeLeaf));
  }
  return (TreeNode *)pNew;
}