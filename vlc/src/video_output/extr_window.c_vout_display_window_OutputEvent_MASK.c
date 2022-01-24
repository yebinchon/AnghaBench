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
typedef  int /*<<< orphan*/  vout_window_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 

__attribute__((used)) static void FUNC1(vout_window_t *window,
                                            const char *name, const char *desc)
{
    if (desc != NULL)
        FUNC0(window, "fullscreen output %s (%s) added", name, desc);
    else
        FUNC0(window, "fullscreen output %s removed", name);
}