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

/* Variables and functions */
 scalar_t__ KMOD_RESOURCES_OK ; 
 int /*<<< orphan*/  ctx ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static bool FUNC2(void) {
        FUNC1("Validate module index");
        if (!ctx)
                return false;
        return (FUNC0(ctx) != KMOD_RESOURCES_OK);
}