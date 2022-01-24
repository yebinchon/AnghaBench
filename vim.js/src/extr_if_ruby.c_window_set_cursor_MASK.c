#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  col; int /*<<< orphan*/  lnum; } ;
struct TYPE_5__ {TYPE_1__ w_cursor; } ;
typedef  TYPE_2__ win_T ;
typedef  int /*<<< orphan*/  VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOT_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Qnil ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_ARRAY ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rb_eArgError ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VALUE FUNC9(VALUE self, VALUE pos)
{
    VALUE lnum, col;
    win_T *win = FUNC6(self);

    FUNC0(pos, T_ARRAY);
    if (FUNC3(pos) != 2)
	FUNC7(rb_eArgError, "array length must be 2");
    lnum = FUNC4(pos)[0];
    col = FUNC4(pos)[1];
    win->w_cursor.lnum = FUNC1(lnum);
    win->w_cursor.col = FUNC2(col);
    FUNC5();		    /* put cursor on an existing line */
    FUNC8(NOT_VALID);
    return Qnil;
}