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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static TreeNode *FUNC1(lsm_db *pDb, u32 *piPtr, int *pRc){
  return FUNC0(pDb, sizeof(TreeNode), piPtr, pRc);
}