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
 int /*<<< orphan*/  T_ME ; 
 int /*<<< orphan*/  T_OP ; 
 scalar_t__ cterm_normal_bg_color ; 
 scalar_t__ cterm_normal_fg_bold ; 
 scalar_t__ cterm_normal_fg_color ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int screen_attr ; 
 int t_colors ; 

void
FUNC1()
{
    if (t_colors > 1)
    {
	/* set Normal cterm colors */
	if (cterm_normal_fg_color > 0 || cterm_normal_bg_color > 0)
	{
	    FUNC0(T_OP);
	    screen_attr = -1;
	}
	if (cterm_normal_fg_bold)
	{
	    FUNC0(T_ME);
	    screen_attr = -1;
	}
    }
}