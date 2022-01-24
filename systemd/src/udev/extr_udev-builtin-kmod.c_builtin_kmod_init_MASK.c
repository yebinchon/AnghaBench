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
 int ENOMEM ; 
 scalar_t__ ctx ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  udev_kmod_log ; 

__attribute__((used)) static int FUNC4(void) {
        if (ctx)
                return 0;

        ctx = FUNC1(NULL, NULL);
        if (!ctx)
                return -ENOMEM;

        FUNC3("Load module index");
        FUNC2(ctx, udev_kmod_log, NULL);
        FUNC0(ctx);
        return 0;
}