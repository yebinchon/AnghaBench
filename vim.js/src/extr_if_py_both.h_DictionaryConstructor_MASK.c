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
struct TYPE_4__ {int /*<<< orphan*/  dv_refcount; } ;
typedef  TYPE_1__ dict_T ;
typedef  int /*<<< orphan*/  PyTypeObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  DictionaryObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 () ; 

__attribute__((used)) static PyObject *
FUNC5(PyTypeObject *subtype, PyObject *args, PyObject *kwargs)
{
    DictionaryObject	*self;
    dict_T	*dict;

    if (!(dict = FUNC4()))
	return NULL;

    self = (DictionaryObject *) FUNC0(subtype, dict);

    --dict->dv_refcount;

    if (kwargs || FUNC2(args))
    {
	PyObject	*tmp;
	if (!(tmp = FUNC1(self, args, kwargs)))
	{
	    FUNC3(self);
	    return NULL;
	}

	FUNC3(tmp);
    }

    return (PyObject *)(self);
}