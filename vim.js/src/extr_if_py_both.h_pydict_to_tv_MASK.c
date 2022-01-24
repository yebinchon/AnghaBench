#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_4__* v_dict; } ;
struct TYPE_16__ {TYPE_1__ vval; int /*<<< orphan*/  v_type; } ;
typedef  TYPE_2__ typval_T ;
struct TYPE_14__ {scalar_t__ v_lock; } ;
struct TYPE_17__ {TYPE_12__ di_tv; int /*<<< orphan*/  di_key; } ;
typedef  TYPE_3__ dictitem_T ;
struct TYPE_18__ {int /*<<< orphan*/  dv_refcount; } ;
typedef  TYPE_4__ dict_T ;
typedef  scalar_t__ char_u ;
typedef  int /*<<< orphan*/  Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 scalar_t__ NUL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAISE_NO_EMPTY_KEYS ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  VAR_DICT ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_12__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 TYPE_3__* FUNC9 (scalar_t__*) ; 
 TYPE_4__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC12(PyObject *obj, typval_T *tv, PyObject *lookup_dict)
{
    dict_T	*dict;
    char_u	*key;
    dictitem_T	*di;
    PyObject	*keyObject;
    PyObject	*valObject;
    Py_ssize_t	iter = 0;

    if (!(dict = FUNC10()))
	return -1;

    tv->v_type = VAR_DICT;
    tv->vval.v_dict = dict;

    while (FUNC0(obj, &iter, &keyObject, &valObject))
    {
	PyObject	*todecref = NULL;

	if (keyObject == NULL || valObject == NULL)
	{
	    FUNC8(dict);
	    return -1;
	}

	if (!(key = FUNC4(keyObject, &todecref)))
	{
	    FUNC8(dict);
	    return -1;
	}

	if (*key == NUL)
	{
	    FUNC8(dict);
	    FUNC2(todecref);
	    RAISE_NO_EMPTY_KEYS;
	    return -1;
	}

	di = FUNC9(key);

	FUNC2(todecref);

	if (di == NULL)
	{
	    FUNC1();
	    FUNC8(dict);
	    return -1;
	}
	di->di_tv.v_lock = 0;

	if (FUNC5(valObject, &di->di_tv, lookup_dict) == -1)
	{
	    FUNC11(di);
	    FUNC8(dict);
	    return -1;
	}

	if (FUNC7(dict, di) == FAIL)
	{
	    FUNC3(di->di_key);
	    FUNC6(&di->di_tv);
	    FUNC11(di);
	    FUNC8(dict);
	    return -1;
	}
    }

    --dict->dv_refcount;
    return 0;
}