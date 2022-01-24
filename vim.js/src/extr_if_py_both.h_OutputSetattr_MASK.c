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
struct TYPE_3__ {int /*<<< orphan*/  softspace; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ OutputObject ;

/* Variables and functions */
 int /*<<< orphan*/  NUMBER_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(OutputObject *self, char *name, PyObject *valObject)
{
    if (valObject == NULL)
    {
	FUNC3(PyExc_AttributeError,
		FUNC0("can't delete OutputObject attributes"));
	return -1;
    }

    if (FUNC4(name, "softspace") == 0)
    {
	if (FUNC1(valObject, &(self->softspace), NUMBER_UNSIGNED))
	    return -1;
	return 0;
    }

    FUNC2(PyExc_AttributeError, FUNC0("invalid attribute: %s"), name);
    return -1;
}