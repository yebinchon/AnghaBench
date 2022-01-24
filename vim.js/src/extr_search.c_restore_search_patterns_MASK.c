#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_idx ; 
 scalar_t__ save_level ; 
 int /*<<< orphan*/  saved_last_idx ; 
 int /*<<< orphan*/  saved_no_hlsearch ; 
 TYPE_1__* saved_spats ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* spats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3()
{
    if (--save_level == 0)
    {
	FUNC2(spats[0].pat);
	spats[0] = saved_spats[0];
#if defined(FEAT_EVAL)
	set_vv_searchforward();
#endif
	FUNC2(spats[1].pat);
	spats[1] = saved_spats[1];
	last_idx = saved_last_idx;
# ifdef FEAT_SEARCH_EXTRA
	SET_NO_HLSEARCH(saved_no_hlsearch);
# endif
    }
}