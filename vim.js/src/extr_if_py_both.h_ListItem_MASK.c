#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  li_tv; } ;
typedef  TYPE_1__ listitem_T ;
struct TYPE_7__ {int /*<<< orphan*/  list; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ ListObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PyExc_IndexError ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static PyObject *
FUNC6(ListObject *self, Py_ssize_t index)
{
    listitem_T	*li;

    if (index >= FUNC1(self))
    {
	FUNC3(PyExc_IndexError, FUNC2("list index out of range"));
	return NULL;
    }
    li = FUNC5(self->list, (long) index);
    if (li == NULL)
    {
	/* No more suitable format specifications in python-2.3 */
	FUNC4(FUNC2("internal error: failed to get vim list item %d"),
		(int) index);
	return NULL;
    }
    return FUNC0(&li->li_tv);
}