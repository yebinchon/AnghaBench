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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * MMDevEnumerator ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMDevice_count ; 
 int /*<<< orphan*/ * MMDevice_head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * key_capture ; 
 int /*<<< orphan*/ * key_render ; 

void FUNC4(void)
{
    while (MMDevice_count)
        FUNC2(MMDevice_head[0]);
    FUNC3(key_render);
    FUNC3(key_capture);
    key_render = key_capture = NULL;
    FUNC1(FUNC0(), 0, MMDevEnumerator);
    MMDevEnumerator = NULL;
}