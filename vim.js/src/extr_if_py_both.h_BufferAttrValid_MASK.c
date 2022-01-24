#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ buf; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ BufferObject ;

/* Variables and functions */
 scalar_t__ INVALID_BUFFER_VALUE ; 
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_True ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static PyObject *
FUNC2(BufferObject *self, char *name)
{
    PyObject	*ret;

    if (FUNC1(name, "valid") != 0)
	return NULL;

    ret = ((self->buf == INVALID_BUFFER_VALUE) ? Py_False : Py_True);
    FUNC0(ret);
    return ret;
}