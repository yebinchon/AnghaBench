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
typedef  int /*<<< orphan*/  vlc_plugin_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__* vlc_static_modules ; 

__attribute__((used)) static void FUNC3(void)
{
    if (!vlc_static_modules)
        return;

    for (unsigned i = 0; vlc_static_modules[i]; i++)
    {
        vlc_plugin_t *lib = FUNC1(vlc_static_modules[i]);
        if (FUNC0(lib != NULL))
            FUNC2(lib);
    }
}