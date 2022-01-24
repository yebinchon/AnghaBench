#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {long ml_line_count; } ;
struct TYPE_6__ {TYPE_1__ b_ml; } ;
typedef  TYPE_2__ buf_T ;
typedef  int /*<<< orphan*/  aco_save_T ;
typedef  int /*<<< orphan*/  VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_VALID ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  Qnil ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (long,long) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rb_eIndexError ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,long) ; 
 scalar_t__ FUNC8 (long,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VALUE FUNC10(VALUE self, VALUE num)
{
    buf_T	*buf = FUNC5(self);
    long	n = FUNC0(num);
    aco_save_T	aco;

    if (n > 0 && n <= buf->b_ml.ml_line_count)
    {
	/* set curwin/curbuf for "buf" and save some things */
	FUNC1(&aco, buf);

	if (FUNC8(n, 1) == OK) {
	    FUNC6(n, 0);

	    /* Changes to non-active buffers should properly refresh
	     *   SegPhault - 01/09/05 */
	    FUNC4(n, 1L);

	    FUNC3();
	}

	/* restore curwin/curbuf and a few other things */
	FUNC2(&aco);
	/* Careful: autocommands may have made "buf" invalid! */

	FUNC9(NOT_VALID);
    }
    else
    {
	FUNC7(rb_eIndexError, "line number %ld out of range", n);
    }
    return Qnil;
}