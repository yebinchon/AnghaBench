#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* w_s; } ;
struct TYPE_3__ {scalar_t__ b_syn_sync_maxlines; scalar_t__ b_syn_sync_minlines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 TYPE_2__* curwin ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3()
{
    if (curwin->w_s->b_syn_sync_maxlines > 0
				      || curwin->w_s->b_syn_sync_minlines > 0)
    {
	FUNC0("; ");
	if (curwin->w_s->b_syn_sync_minlines > 0)
	{
	    FUNC0(FUNC1("minimal "));
	    FUNC2(curwin->w_s->b_syn_sync_minlines);
	    if (curwin->w_s->b_syn_sync_maxlines)
		FUNC0(", ");
	}
	if (curwin->w_s->b_syn_sync_maxlines > 0)
	{
	    FUNC0(FUNC1("maximal "));
	    FUNC2(curwin->w_s->b_syn_sync_maxlines);
	}
	FUNC0(FUNC1(" lines before top line"));
    }
}