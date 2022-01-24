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
struct TYPE_6__ {scalar_t__ ht_array; scalar_t__ ht_used; TYPE_3__* hi; scalar_t__ todo; TYPE_1__* ht; } ;
typedef  TYPE_2__ dictiterinfo_T ;
struct TYPE_7__ {scalar_t__ hi_key; } ;
struct TYPE_5__ {scalar_t__ ht_array; scalar_t__ ht_used; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 

__attribute__((used)) static PyObject *
FUNC4(dictiterinfo_T **dii)
{
    PyObject	*ret;

    if (!(*dii)->todo)
	return NULL;

    if ((*dii)->ht->ht_array != (*dii)->ht_array ||
	    (*dii)->ht->ht_used != (*dii)->ht_used)
    {
	FUNC3(PyExc_RuntimeError,
		FUNC1("hashtab changed during iteration"));
	return NULL;
    }

    while (((*dii)->todo) && FUNC0((*dii)->hi))
	++((*dii)->hi);

    --((*dii)->todo);

    if (!(ret = FUNC2((char *)(*dii)->hi->hi_key)))
	return NULL;

    return ret;
}