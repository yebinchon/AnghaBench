#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* v_dict; } ;
struct TYPE_18__ {TYPE_2__ vval; int /*<<< orphan*/  v_type; } ;
typedef  TYPE_3__ typval_T ;
struct TYPE_20__ {TYPE_1__* dict; } ;
struct TYPE_19__ {int /*<<< orphan*/  ob_type; } ;
struct TYPE_16__ {int /*<<< orphan*/  dv_refcount; } ;
typedef  TYPE_4__ PyObject ;
typedef  TYPE_5__ DictionaryObject ;

/* Variables and functions */
 int /*<<< orphan*/  DictionaryType ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  VAR_DICT ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  pydict_to_tv ; 
 int /*<<< orphan*/  pymap_to_tv ; 

__attribute__((used)) static int
FUNC9(PyObject *obj, typval_T *tv)
{
    PyObject	*lookup_dict;
    int		ret;

    if (!(lookup_dict = FUNC2()))
	return -1;

    if (FUNC5(obj->ob_type, &DictionaryType))
    {
	tv->v_type = VAR_DICT;
	tv->vval.v_dict = (((DictionaryObject *)(obj))->dict);
	++tv->vval.v_dict->dv_refcount;
	ret = 0;
    }
    else if (FUNC1(obj))
	ret = FUNC8(obj, tv, pydict_to_tv, lookup_dict);
    else if (FUNC4(obj))
	ret = FUNC8(obj, tv, pymap_to_tv, lookup_dict);
    else
    {
	FUNC3(PyExc_TypeError,
		FUNC0("unable to convert %s to vim dictionary"),
		FUNC7(obj));
	ret = -1;
    }
    FUNC6(lookup_dict);
    return ret;
}