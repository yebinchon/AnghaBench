#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  linenr_T ;
typedef  int /*<<< orphan*/  buf_T ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  scalar_t__ PyInt ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC5(buf_T *buf, PyInt lo, PyInt hi)
{
    PyInt	i;
    PyInt	n = hi - lo;
    PyObject	*list = FUNC1(n);

    if (list == NULL)
	return NULL;

    for (i = 0; i < n; ++i)
    {
	PyObject	*string = FUNC0(
		(char *)FUNC4(buf, (linenr_T)(lo+i), FALSE));

	/* Error check - was the Python string creation OK? */
	if (string == NULL)
	{
	    FUNC3(list);
	    return NULL;
	}

	FUNC2(list, i, string);
    }

    /* The ownership of the Python list is passed to the caller (ie,
     * the caller should Py_DECREF() the object when it is finished
     * with it).
     */

    return list;
}