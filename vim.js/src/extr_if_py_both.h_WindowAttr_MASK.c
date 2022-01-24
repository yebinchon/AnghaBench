#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ col; scalar_t__ lnum; } ;
typedef  TYPE_1__ pos_T ;
typedef  int /*<<< orphan*/  checkfun ;
struct TYPE_9__ {scalar_t__ tabObject; TYPE_3__* win; } ;
typedef  TYPE_2__ WindowObject ;
struct TYPE_10__ {int /*<<< orphan*/  w_vars; scalar_t__ w_winrow; scalar_t__ w_height; TYPE_1__ w_cursor; int /*<<< orphan*/  w_buffer; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CheckWindow ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (long) ; 
 int /*<<< orphan*/ * FUNC6 (char*,long,long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  SREQ_WIN ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  WindowAttrs ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*) ; 

__attribute__((used)) static PyObject *
FUNC13(WindowObject *self, char *name)
{
    if (FUNC12(name, "buffer") == 0)
	return (PyObject *)FUNC0(self->win->w_buffer);
    else if (FUNC12(name, "cursor") == 0)
    {
	pos_T *pos = &self->win->w_cursor;

	return FUNC6("(ll)", (long)(pos->lnum), (long)(pos->col));
    }
    else if (FUNC12(name, "height") == 0)
	return FUNC5((long)(self->win->w_height));
#ifdef FEAT_WINDOWS
    else if (strcmp(name, "row") == 0)
	return PyLong_FromLong((long)(self->win->w_winrow));
#endif
#ifdef FEAT_VERTSPLIT
    else if (strcmp(name, "width") == 0)
	return PyLong_FromLong((long)(W_WIDTH(self->win)));
    else if (strcmp(name, "col") == 0)
	return PyLong_FromLong((long)(W_WINCOL(self->win)));
#endif
    else if (FUNC12(name, "vars") == 0)
	return FUNC2(self->win->w_vars);
    else if (FUNC12(name, "options") == 0)
	return FUNC4(SREQ_WIN, self->win, (checkfun) CheckWindow,
			(PyObject *) self);
    else if (FUNC12(name, "number") == 0)
    {
	if (FUNC1(self->tabObject))
	    return NULL;
	return FUNC5((long)
		FUNC11(self->win, FUNC10(self->tabObject)));
    }
    else if (FUNC12(name, "tabpage") == 0)
    {
	FUNC7(self->tabObject);
	return (PyObject *)(self->tabObject);
    }
    else if (FUNC12(name, "__members__") == 0)
	return FUNC3(NULL, WindowAttrs);
    else
	return NULL;
}