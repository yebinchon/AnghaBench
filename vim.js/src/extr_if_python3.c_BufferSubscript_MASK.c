#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* buf; } ;
struct TYPE_7__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
typedef  int /*<<< orphan*/  Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ BufferObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,long) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC8(PyObject *self, PyObject* idx)
{
    if (FUNC4(idx))
    {
	long _idx = FUNC3(idx);
	return FUNC0((BufferObject *)(self), _idx);
    } else if (FUNC5(idx))
    {
	Py_ssize_t start, stop, step, slicelen;

	if (FUNC2((BufferObject *) self))
	    return NULL;

	if (FUNC6((PyObject *)idx,
	      (Py_ssize_t)((BufferObject *)(self))->buf->b_ml.ml_line_count,
	      &start, &stop,
	      &step, &slicelen) < 0)
	{
	    return NULL;
	}
	return FUNC1((BufferObject *)(self), start, stop);
    }
    else
    {
	FUNC7(idx);
	return NULL;
    }
}