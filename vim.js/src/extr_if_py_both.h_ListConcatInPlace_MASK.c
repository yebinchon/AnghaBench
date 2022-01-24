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
struct TYPE_6__ {scalar_t__ lv_lock; } ;
typedef  TYPE_1__ list_T ;
struct TYPE_7__ {TYPE_1__* list; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ ListObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  RAISE_LOCKED_LIST ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(ListObject *self, PyObject *obj)
{
    list_T	*l = self->list;
    PyObject	*lookup_dict;

    if (l->lv_lock)
    {
	RAISE_LOCKED_LIST;
	return NULL;
    }

    if (!(lookup_dict = FUNC0()))
	return NULL;

    if (FUNC3(l, obj, lookup_dict) == -1)
    {
	FUNC1(lookup_dict);
	return NULL;
    }
    FUNC1(lookup_dict);

    FUNC2(self);
    return (PyObject *)(self);
}