#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_6__ {int /*<<< orphan*/ * name; } ;
struct TYPE_5__ {scalar_t__ (* tp_alloc ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ PyTypeObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ FunctionObject ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOLOAD_CHAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC9(PyTypeObject *subtype, char_u *name)
{
    FunctionObject	*self;

    self = (FunctionObject *) subtype->tp_alloc(subtype, 0);

    if (self == NULL)
	return NULL;

    if (FUNC4(*name))
    {
	if (!FUNC6(name))
	{
	    FUNC1(PyExc_ValueError,
		    FUNC0("unnamed function %s does not exist"), name);
	    return NULL;
	}
	self->name = FUNC8(name);
	FUNC2(self->name);
    }
    else
	if ((self->name = FUNC3(name,
				    FUNC7(name, AUTOLOAD_CHAR) == NULL))
		== NULL)
	{
	    FUNC1(PyExc_ValueError,
		    FUNC0("function %s does not exist"), name);
	    return NULL;
	}

    return (PyObject *)(self);
}