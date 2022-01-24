#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* dict; } ;
struct TYPE_3__ {int /*<<< orphan*/  dv_scope; int /*<<< orphan*/  dv_lock; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ DictionaryObject ;

/* Variables and functions */
 int /*<<< orphan*/  DictionaryAttrs ; 
 int /*<<< orphan*/  DictionaryMethods ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static PyObject *
FUNC4(PyObject *self, char *name)
{
    DictionaryObject	*this = ((DictionaryObject *) (self));

    if (FUNC3(name, "locked") == 0)
	return FUNC1(this->dict->dv_lock);
    else if (FUNC3(name, "scope") == 0)
	return FUNC1(this->dict->dv_scope);
    else if (FUNC3(name, "__members__") == 0)
	return FUNC0(NULL, DictionaryAttrs);

    return FUNC2(DictionaryMethods, self, name);
}