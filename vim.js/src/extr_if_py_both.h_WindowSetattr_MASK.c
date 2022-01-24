#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {long lnum; long col; scalar_t__ coladd; } ;
struct TYPE_13__ {TYPE_3__ w_cursor; TYPE_2__* w_buffer; } ;
typedef  TYPE_4__ win_T ;
struct TYPE_14__ {TYPE_4__* win; } ;
typedef  TYPE_5__ WindowObject ;
struct TYPE_10__ {long ml_line_count; } ;
struct TYPE_11__ {TYPE_1__ b_ml; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int NUMBER_INT ; 
 int NUMBER_UNSIGNED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,long*,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VALID ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 TYPE_4__* curwin ; 
 int /*<<< orphan*/  need_mouse_correct ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(WindowObject *self, char *name, PyObject *valObject)
{
    if (FUNC0(self))
	return -1;

    if (FUNC11(name, "buffer") == 0)
    {
	FUNC4(PyExc_TypeError, FUNC1("readonly attribute: buffer"));
	return -1;
    }
    else if (FUNC11(name, "cursor") == 0)
    {
	long lnum;
	long col;

	if (!FUNC3(valObject, "(ll)", &lnum, &col))
	    return -1;

	if (lnum <= 0 || lnum > self->win->w_buffer->b_ml.ml_line_count)
	{
	    FUNC5(FUNC1("cursor position outside buffer"));
	    return -1;
	}

	/* Check for keyboard interrupts */
	if (FUNC7())
	    return -1;

	self->win->w_cursor.lnum = lnum;
	self->win->w_cursor.col = col;
#ifdef FEAT_VIRTUALEDIT
	self->win->w_cursor.coladd = 0;
#endif
	/* When column is out of range silently correct it. */
	FUNC10(self->win);

	FUNC12(VALID);
	return 0;
    }
    else if (FUNC11(name, "height") == 0)
    {
	long	height;
	win_T	*savewin;

	if (FUNC2(valObject, &height, NUMBER_INT|NUMBER_UNSIGNED))
	    return -1;

#ifdef FEAT_GUI
	need_mouse_correct = TRUE;
#endif
	savewin = curwin;
	curwin = self->win;

	FUNC9();
	FUNC13((int) height);
	curwin = savewin;
	if (FUNC8())
	    return -1;

	return 0;
    }
#ifdef FEAT_VERTSPLIT
    else if (strcmp(name, "width") == 0)
    {
	long	width;
	win_T	*savewin;

	if (NumberToLong(valObject, &width, NUMBER_INT|NUMBER_UNSIGNED))
	    return -1;

#ifdef FEAT_GUI
	need_mouse_correct = TRUE;
#endif
	savewin = curwin;
	curwin = self->win;

	VimTryStart();
	win_setwidth((int) width);
	curwin = savewin;
	if (VimTryEnd())
	    return -1;

	return 0;
    }
#endif
    else
    {
	FUNC6(PyExc_AttributeError, name);
	return -1;
    }
}