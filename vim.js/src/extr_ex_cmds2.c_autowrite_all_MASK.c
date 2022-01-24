#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  b_p_ro; struct TYPE_6__* b_next; } ;
typedef  TYPE_1__ buf_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* firstbuf ; 
 scalar_t__ p_aw ; 
 scalar_t__ p_awa ; 
 int /*<<< orphan*/  p_write ; 

void
FUNC3()
{
    buf_T	*buf;

    if (!(p_aw || p_awa) || !p_write)
	return;
    for (buf = firstbuf; buf; buf = buf->b_next)
	if (FUNC0(buf) && !buf->b_p_ro)
	{
	    (void)FUNC2(buf, FALSE);
#ifdef FEAT_AUTOCMD
	    /* an autocommand may have deleted the buffer */
	    if (!buf_valid(buf))
		buf = firstbuf;
#endif
	}
}