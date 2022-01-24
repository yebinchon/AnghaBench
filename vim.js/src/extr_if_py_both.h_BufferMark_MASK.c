#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ lnum; scalar_t__ col; } ;
typedef  TYPE_1__ pos_T ;
typedef  char char_u ;
typedef  int /*<<< orphan*/  buf_T ;
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ BufferObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC4 (char*,long,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* FUNC10 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC13(BufferObject *self, PyObject *pmarkObject)
{
    pos_T	*posp;
    char_u	*pmark;
    char_u	mark;
    buf_T	*savebuf;
    PyObject	*todecref;

    if (FUNC0(self))
	return NULL;

    if (!(pmark = FUNC7(pmarkObject, &todecref)))
	return NULL;

    if (pmark[0] == '\0' || pmark[1] != '\0')
    {
	FUNC2(PyExc_ValueError,
		FUNC1("mark name must be a single character"));
	FUNC6(todecref);
	return NULL;
    }

    mark = *pmark;

    FUNC6(todecref);

    FUNC9();
    FUNC12(&savebuf, self->buf);
    posp = FUNC10(mark, FALSE);
    FUNC11(savebuf);
    if (FUNC8())
	return NULL;

    if (posp == NULL)
    {
	FUNC3(FUNC1("invalid mark name"));
	return NULL;
    }

    if (posp->lnum <= 0)
    {
	/* Or raise an error? */
	FUNC5(Py_None);
	return Py_None;
    }

    return FUNC4("(ll)", (long)(posp->lnum), (long)(posp->col));
}