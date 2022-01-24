#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  entry; void* value; void* name; } ;
typedef  TYPE_1__ param_prop_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  props; } ;
typedef  TYPE_2__ PropertyBag ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(PropertyBag *prop_bag, const WCHAR *name, const WCHAR *value)
{
    param_prop_t *prop;

    if(!name || !value)
        return S_OK;

    FUNC0("%p %s %s\n", prop_bag, FUNC1(name), FUNC1(value));

    prop = FUNC3(sizeof(*prop));
    if(!prop)
        return E_OUTOFMEMORY;

    prop->name = FUNC4(name);
    prop->value = FUNC4(value);
    if(!prop->name || !prop->value) {
        FUNC6(&prop->entry);
        FUNC2(prop);
        return E_OUTOFMEMORY;
    }

    FUNC5(&prop_bag->props, &prop->entry);
    return S_OK;
}