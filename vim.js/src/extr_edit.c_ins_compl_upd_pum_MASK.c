#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int w_cline_height; } ;

/* Variables and functions */
 int /*<<< orphan*/ * compl_match_array ; 
 TYPE_1__* curwin ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2()
{
    int		h;

    if (compl_match_array != NULL)
    {
	h = curwin->w_cline_height;
	FUNC1(0);
	if (h != curwin->w_cline_height)
	    FUNC0();
    }
}