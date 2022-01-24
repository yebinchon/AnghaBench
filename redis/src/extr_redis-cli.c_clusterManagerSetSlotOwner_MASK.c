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
typedef  int /*<<< orphan*/  clusterManagerNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clusterManagerOnSetOwnerErr ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(clusterManagerNode *owner,
                                      int slot,
                                      int do_clear)
{
    int success = FUNC5(owner);
    if (!success) return 0;
    /* Ensure the slot is not already assigned. */
    FUNC3(owner, slot, 1);
    /* Add the slot and bump epoch. */
    FUNC0(owner, slot);
    if (do_clear) FUNC2(owner, slot);
    FUNC1(owner);
    success = FUNC4(owner, clusterManagerOnSetOwnerErr);
    return success;
}