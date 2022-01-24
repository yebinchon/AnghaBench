#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ long_u ;
typedef  int /*<<< orphan*/ * (* hi_to_py ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  hashitem_T ;
struct TYPE_5__ {scalar_t__ ht_used; int /*<<< orphan*/ * ht_array; } ;
struct TYPE_6__ {TYPE_1__ dv_hashtab; } ;
typedef  TYPE_2__ dict_T ;
struct TYPE_7__ {TYPE_2__* dict; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ DictionaryObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(DictionaryObject *self, hi_to_py hiconvert)
{
    dict_T	*dict = self->dict;
    long_u	todo = dict->dv_hashtab.ht_used;
    Py_ssize_t	i = 0;
    PyObject	*ret;
    hashitem_T	*hi;
    PyObject	*newObj;

    ret = FUNC1(todo);
    for (hi = dict->dv_hashtab.ht_array; todo > 0; ++hi)
    {
	if (!FUNC0(hi))
	{
	    if (!(newObj = hiconvert(hi)))
	    {
		FUNC3(ret);
		return NULL;
	    }
	    FUNC2(ret, i, newObj);
	    --todo;
	    ++i;
	}
    }
    return ret;
}