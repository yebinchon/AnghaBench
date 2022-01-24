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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 long INT_MAX ; 
 long INT_MIN ; 
 int NUMBER_INT ; 
 int NUMBER_NATURAL ; 
 int NUMBER_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_OverflowError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(PyObject *obj, long *result, int flags)
{
#if PY_MAJOR_VERSION < 3
    if (FUNC5(obj))
    {
	*result = FUNC4(obj);
	if (FUNC2())
	    return -1;
    }
    else
#endif
    if (FUNC7(obj))
    {
	*result = FUNC6(obj);
	if (FUNC2())
	    return -1;
    }
    else if (FUNC8(obj))
    {
	PyObject	*num;

	if (!(num = FUNC9(obj)))
	    return -1;

	*result = FUNC6(num);

	FUNC10(num);

	if (FUNC2())
	    return -1;
    }
    else
    {
#if PY_MAJOR_VERSION < 3
	FUNC1(PyExc_TypeError,
		FUNC0("expected int(), long() or something supporting "
		   "coercing to long(), but got %s"),
		FUNC11(obj));
#else
	PyErr_FORMAT(PyExc_TypeError,
		N_("expected int() or something supporting coercing to int(), "
		   "but got %s"),
		Py_TYPE_NAME(obj));
#endif
	return -1;
    }

    if (flags & NUMBER_INT)
    {
	if (*result > INT_MAX)
	{
	    FUNC3(PyExc_OverflowError,
		    FUNC0("value is too large to fit into C int type"));
	    return -1;
	}
	else if (*result < INT_MIN)
	{
	    FUNC3(PyExc_OverflowError,
		    FUNC0("value is too small to fit into C int type"));
	    return -1;
	}
    }

    if (flags & NUMBER_NATURAL)
    {
	if (*result <= 0)
	{
	    FUNC3(PyExc_ValueError,
		    FUNC0("number must be greater then zero"));
	    return -1;
	}
    }
    else if (flags & NUMBER_UNSIGNED)
    {
	if (*result < 0)
	{
	    FUNC3(PyExc_ValueError,
		    FUNC0("number must be greater or equal to zero"));
	    return -1;
	}
    }

    return 0;
}