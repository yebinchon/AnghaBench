#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_7__ {TYPE_4__* buf; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int PyInt ;
typedef  TYPE_2__ BufferObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FAIL ; 
 scalar_t__ FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_IndexError ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 

__attribute__((used)) static PyObject *
FUNC6(
	BufferObject *self,
	PyObject *args,
	PyInt start,
	PyInt end,
	PyInt *new_end)
{
    PyObject *lines;
    PyInt len_change;
    PyInt max;
    PyInt n;

    if (FUNC0(self))
	return NULL;

    if (end == -1)
	end = self->buf->b_ml.ml_line_count;

    max = n = end - start + 1;

    if (!FUNC3(args, "O|n", &lines, &n))
	return NULL;

    if (n < 0 || n > max)
    {
	FUNC4(PyExc_IndexError, FUNC2("line number out of range"));
	return NULL;
    }

    if (FUNC1(self->buf, n + start - 1, lines, &len_change) == FAIL)
	return NULL;

    if (new_end)
	*new_end = end + len_change;

    FUNC5(Py_None);
    return Py_None;
}