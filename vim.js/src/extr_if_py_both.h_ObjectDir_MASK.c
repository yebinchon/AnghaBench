#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * ml_name; } ;
struct TYPE_10__ {TYPE_1__* ob_type; } ;
struct TYPE_9__ {TYPE_3__* tp_methods; } ;
typedef  TYPE_2__ PyObject ;
typedef  TYPE_3__ PyMethodDef ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*) ; 

__attribute__((used)) static PyObject *
FUNC3(PyObject *self, char **attributes)
{
    PyMethodDef	*method;
    char	**attr;
    PyObject	*ret;

    if (!(ret = FUNC0(0)))
	return NULL;

    if (self)
	for (method = self->ob_type->tp_methods ; method->ml_name != NULL ; ++method)
	    if (FUNC2(ret, (char *)method->ml_name))
	    {
		FUNC1(ret);
		return NULL;
	    }

    for (attr = attributes ; *attr ; ++attr)
	if (FUNC2(ret, *attr))
	{
	    FUNC1(ret);
	    return NULL;
	}

#if PY_MAJOR_VERSION < 3
    if (FUNC2(ret, "__members__"))
    {
	FUNC1(ret);
	return NULL;
    }
#endif

    return ret;
}