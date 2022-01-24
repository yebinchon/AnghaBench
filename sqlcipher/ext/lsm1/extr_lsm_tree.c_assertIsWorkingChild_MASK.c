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

/* Variables and functions */
 int /*<<< orphan*/  WORKING_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
  lsm_db *db, 
  TreeNode *pNode, 
  TreeNode *pParent, 
  int iCell
){
  TreeNode *p;
  u32 iPtr = FUNC1(pParent, WORKING_VERSION, iCell);
  p = FUNC2(db, iPtr);
  FUNC0( p==pNode );
}