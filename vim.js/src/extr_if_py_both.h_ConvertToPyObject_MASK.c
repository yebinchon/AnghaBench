#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * v_string; int /*<<< orphan*/  v_dict; int /*<<< orphan*/  v_list; scalar_t__ v_float; scalar_t__ v_number; } ;
struct TYPE_5__ {int v_type; TYPE_1__ vval; } ;
typedef  TYPE_2__ typval_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (double) ; 
 int /*<<< orphan*/ * FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
#define  VAR_DICT 134 
#define  VAR_FLOAT 133 
#define  VAR_FUNC 132 
#define  VAR_LIST 131 
#define  VAR_NUMBER 130 
#define  VAR_STRING 129 
#define  VAR_UNKNOWN 128 

__attribute__((used)) static PyObject *
FUNC9(typval_T *tv)
{
    if (tv == NULL)
    {
	FUNC5(FUNC3("internal error: NULL reference passed"));
	return NULL;
    }
    switch (tv->v_type)
    {
	case VAR_STRING:
	    return FUNC4(tv->vval.v_string == NULL
					    ? "" : (char *)tv->vval.v_string);
	case VAR_NUMBER:
	    return FUNC7((long) tv->vval.v_number);
#ifdef FEAT_FLOAT
	case VAR_FLOAT:
	    return PyFloat_FromDouble((double) tv->vval.v_float);
#endif
	case VAR_LIST:
	    return FUNC2(tv->vval.v_list);
	case VAR_DICT:
	    return FUNC0(tv->vval.v_dict);
	case VAR_FUNC:
	    return FUNC1(tv->vval.v_string == NULL
					  ? (char_u *)"" : tv->vval.v_string);
	case VAR_UNKNOWN:
	    FUNC8(Py_None);
	    return Py_None;
	default:
	    FUNC5(FUNC3("internal error: invalid value type"));
	    return NULL;
    }
}