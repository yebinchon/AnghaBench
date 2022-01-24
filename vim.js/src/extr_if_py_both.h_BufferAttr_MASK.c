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
typedef  int /*<<< orphan*/  checkfun ;
struct TYPE_5__ {int /*<<< orphan*/  b_vars; int /*<<< orphan*/  b_fnum; int /*<<< orphan*/ * b_ffname; } ;
struct TYPE_4__ {TYPE_2__* buf; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ BufferObject ;

/* Variables and functions */
 int /*<<< orphan*/  BufferAttrs ; 
 scalar_t__ CheckBuffer ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Py_ssize_t_fmt ; 
 int /*<<< orphan*/  SREQ_BUF ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static PyObject *
FUNC6(BufferObject *self, char *name)
{
    if (FUNC5(name, "name") == 0)
	return FUNC3((self->buf->b_ffname == NULL
				    ? "" : (char *)self->buf->b_ffname));
    else if (FUNC5(name, "number") == 0)
	return FUNC4(Py_ssize_t_fmt, self->buf->b_fnum);
    else if (FUNC5(name, "vars") == 0)
	return FUNC0(self->buf->b_vars);
    else if (FUNC5(name, "options") == 0)
	return FUNC2(SREQ_BUF, self->buf, (checkfun) CheckBuffer,
			(PyObject *) self);
    else if (FUNC5(name, "__members__") == 0)
	return FUNC1(NULL, BufferAttrs);
    else
	return NULL;
}