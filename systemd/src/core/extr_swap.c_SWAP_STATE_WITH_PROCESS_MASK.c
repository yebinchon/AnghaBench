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
typedef  int /*<<< orphan*/  SwapState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWAP_ACTIVATING ; 
 int /*<<< orphan*/  SWAP_ACTIVATING_DONE ; 
 int /*<<< orphan*/  SWAP_CLEANING ; 
 int /*<<< orphan*/  SWAP_DEACTIVATING ; 
 int /*<<< orphan*/  SWAP_DEACTIVATING_SIGKILL ; 
 int /*<<< orphan*/  SWAP_DEACTIVATING_SIGTERM ; 

__attribute__((used)) static bool FUNC1(SwapState state) {
        return FUNC0(state,
                      SWAP_ACTIVATING,
                      SWAP_ACTIVATING_DONE,
                      SWAP_DEACTIVATING,
                      SWAP_DEACTIVATING_SIGTERM,
                      SWAP_DEACTIVATING_SIGKILL,
                      SWAP_CLEANING);
}