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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  py_load_module ; 

__attribute__((used)) static PyObject *
FUNC8(char *name, int len, PyObject *find_module_result)
{
    PyObject	*fd, *pathname, *description;

    if (!FUNC4(find_module_result))
    {
	FUNC1(PyExc_TypeError,
		FUNC0("expected 3-tuple as imp.find_module() result, but got %s"),
		FUNC7(find_module_result));
	return NULL;
    }
    if (FUNC6(find_module_result) != 3)
    {
	FUNC1(PyExc_TypeError,
		FUNC0("expected 3-tuple as imp.find_module() result, but got "
		   "tuple of size %d"),
		(int) FUNC6(find_module_result));
	return NULL;
    }

    if (!(fd = FUNC5(find_module_result, 0))
	    || !(pathname = FUNC5(find_module_result, 1))
	    || !(description = FUNC5(find_module_result, 2)))
    {
	FUNC2(PyExc_RuntimeError,
		FUNC0("internal error: imp.find_module returned tuple with NULL"));
	return NULL;
    }

    return FUNC3(py_load_module,
	    "s#OOO", name, len, fd, pathname, description);
}