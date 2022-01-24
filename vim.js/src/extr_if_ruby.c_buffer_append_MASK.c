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
typedef  int /*<<< orphan*/  colnr_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_5__ {long ml_line_count; } ;
struct TYPE_6__ {TYPE_1__ b_ml; } ;
typedef  TYPE_2__ buf_T ;
typedef  int /*<<< orphan*/  aco_save_T ;
typedef  int /*<<< orphan*/  VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NOT_VALID ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OK ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rb_eIndexError ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VALUE FUNC11(VALUE self, VALUE num, VALUE str)
{
    buf_T	*buf = FUNC6(self);
    char	*line = FUNC1(str);
    long	n = FUNC0(num);
    aco_save_T	aco;

    if (line == NULL)
    {
	FUNC8(rb_eIndexError, "NULL line");
    }
    else if (n >= 0 && n <= buf->b_ml.ml_line_count)
    {
	/* set curwin/curbuf for "buf" and save some things */
	FUNC3(&aco, buf);

	if (FUNC9(n + 1) == OK) {
	    FUNC7(n, (char_u *) line, (colnr_T) 0, FALSE);

	    /*  Changes to non-active buffers should properly refresh screen
	     *    SegPhault - 12/20/04 */
	    FUNC2(n, 1L);

	    FUNC5();
	}

	/* restore curwin/curbuf and a few other things */
	FUNC4(&aco);
	/* Careful: autocommands may have made "buf" invalid! */

	FUNC10(NOT_VALID);
    }
    else
    {
	FUNC8(rb_eIndexError, "line number %ld out of range", n);
    }
    return str;
}