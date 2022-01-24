#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  var; } ;
typedef  TYPE_1__ dynamic_prop_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DispatchEx ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  fdexNameEnsure ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__**) ; 

HRESULT FUNC2(DispatchEx *This, const WCHAR *name, BOOL alloc, VARIANT **ret)
{
    dynamic_prop_t *prop;
    HRESULT hres;

    hres = FUNC1(This, name, alloc ? fdexNameEnsure : 0, &prop);
    if(FUNC0(hres))
        return hres;

    *ret = &prop->var;
    return S_OK;
}