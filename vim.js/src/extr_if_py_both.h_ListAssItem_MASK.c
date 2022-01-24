#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  typval_T ;
struct TYPE_13__ {int /*<<< orphan*/  li_tv; } ;
typedef  TYPE_1__ listitem_T ;
struct TYPE_14__ {scalar_t__ lv_lock; } ;
typedef  TYPE_2__ list_T ;
struct TYPE_15__ {TYPE_2__* list; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ ListObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FAIL ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_IndexError ; 
 int /*<<< orphan*/  RAISE_LOCKED_LIST ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(ListObject *self, Py_ssize_t index, PyObject *obj)
{
    typval_T	tv;
    list_T	*l = self->list;
    listitem_T	*li;
    Py_ssize_t	length = FUNC1(self);

    if (l->lv_lock)
    {
	RAISE_LOCKED_LIST;
	return -1;
    }
    if (index > length || (index == length && obj == NULL))
    {
	FUNC3(PyExc_IndexError, FUNC2("list index out of range"));
	return -1;
    }

    if (obj == NULL)
    {
	li = FUNC8(l, (long) index);
	FUNC9(l, li, li);
	FUNC5(&li->li_tv);
	FUNC10(li);
	return 0;
    }

    if (FUNC0(obj, &tv) == -1)
	return -1;

    if (index == length)
    {
	if (FUNC7(l, &tv) == FAIL)
	{
	    FUNC5(&tv);
	    FUNC4(FUNC2("failed to add item to list"));
	    return -1;
	}
    }
    else
    {
	li = FUNC8(l, (long) index);
	FUNC5(&li->li_tv);
	FUNC6(&tv, &li->li_tv);
	FUNC5(&tv);
    }
    return 0;
}