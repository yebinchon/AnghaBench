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
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  PyTypeObject ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC5(PyTypeObject *subtype, PyObject *args, PyObject *kwargs)
{
    PyObject	*self;
    char_u	*name;

    if (kwargs)
    {
	FUNC3(PyExc_TypeError,
		FUNC1("function constructor does not accept keyword arguments"));
	return NULL;
    }

    if (!FUNC2(args, "et", "ascii", &name))
	return NULL;

    self = FUNC0(subtype, name);

    FUNC4(name);

    return self;
}