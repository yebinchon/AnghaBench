#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  typval_T ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(PyObject *obj, typval_T *tv)
{
    PyObject	*lookup_dict;
    int		ret;

    if (!(lookup_dict = FUNC0()))
	return -1;
    ret = FUNC2(obj, tv, lookup_dict);
    FUNC1(lookup_dict);
    return ret;
}