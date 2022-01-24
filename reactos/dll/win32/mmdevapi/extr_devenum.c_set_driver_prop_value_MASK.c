#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* pGetPropValue ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  PROPVARIANT ;
typedef  int /*<<< orphan*/  PROPERTYKEY ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  EDataFlow ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ drvs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(GUID *id, const EDataFlow flow, const PROPERTYKEY *prop)
{
    HRESULT hr;
    PROPVARIANT pv;

    if (!drvs.pGetPropValue)
        return E_NOTIMPL;

    hr = drvs.pGetPropValue(id, prop, &pv);

    if (FUNC2(hr))
    {
        FUNC0(id, flow, prop, &pv);
        FUNC1(&pv);
    }

    return hr;
}