#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_10__ {int /*<<< orphan*/ * b_next; } ;
struct TYPE_12__ {TYPE_2__ bh_first; } ;
struct TYPE_9__ {int /*<<< orphan*/ * b_next; } ;
struct TYPE_11__ {TYPE_1__ bh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__ old_redobuff ; 
 TYPE_3__ redobuff ; 
 int /*<<< orphan*/  save_level ; 
 TYPE_4__ save_old_redobuff ; 
 TYPE_3__ save_redobuff ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3()
{
    char_u	*s;

    if (save_level++ == 0)
    {
	save_redobuff = redobuff;
	redobuff.bh_first.b_next = NULL;
	save_old_redobuff = old_redobuff;
	old_redobuff.bh_first.b_next = NULL;

	/* Make a copy, so that ":normal ." in a function works. */
	s = FUNC1(&save_redobuff, FALSE);
	if (s != NULL)
	{
	    FUNC0(&redobuff, s, -1L);
	    FUNC2(s);
	}
    }
}