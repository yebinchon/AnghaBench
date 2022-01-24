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
 int /*<<< orphan*/  LineOffset ; 
 int /*<<< orphan*/  LineWraps ; 
 int /*<<< orphan*/  ScreenAttrs ; 
 int /*<<< orphan*/  ScreenLines ; 
 int /*<<< orphan*/  ScreenLines2 ; 
 int /*<<< orphan*/ * ScreenLinesC ; 
 int /*<<< orphan*/  ScreenLinesUC ; 
 int Screen_mco ; 
 int /*<<< orphan*/  TabPageIdxs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1()
{
#ifdef FEAT_MBYTE
    int		i;

    vim_free(ScreenLinesUC);
    for (i = 0; i < Screen_mco; ++i)
	vim_free(ScreenLinesC[i]);
    vim_free(ScreenLines2);
#endif
    FUNC0(ScreenLines);
    FUNC0(ScreenAttrs);
    FUNC0(LineOffset);
    FUNC0(LineWraps);
#ifdef FEAT_WINDOWS
    vim_free(TabPageIdxs);
#endif
}