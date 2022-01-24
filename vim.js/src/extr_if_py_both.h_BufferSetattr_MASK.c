#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  aco_save_T ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ BufferObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FAIL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(BufferObject *self, char *name, PyObject *valObject)
{
    if (FUNC0(self))
	return -1;

    if (FUNC11(name, "name") == 0)
    {
	char_u		*val;
	aco_save_T	aco;
	int		ren_ret;
	PyObject	*todecref;

	if (!(val = FUNC5(valObject, &todecref)))
	    return -1;

	FUNC7();
	/* Using aucmd_*: autocommands will be executed by rename_buffer */
	FUNC8(&aco, self->buf);
	ren_ret = FUNC10(val);
	FUNC9(&aco);
	FUNC4(todecref);
	if (FUNC6())
	    return -1;

	if (ren_ret == FAIL)
	{
	    FUNC2(FUNC1("failed to rename buffer"));
	    return -1;
	}
	return 0;
    }
    else
    {
	FUNC3(PyExc_AttributeError, name);
	return -1;
    }
}