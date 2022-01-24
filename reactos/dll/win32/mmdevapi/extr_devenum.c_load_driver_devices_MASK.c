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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_2__ {int /*<<< orphan*/  (* pGetEndpointIDs ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int /*<<< orphan*/ ***,size_t*,size_t*) ;} ;
typedef  int /*<<< orphan*/  MMDevice ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * GUID ;
typedef  int /*<<< orphan*/  EDataFlow ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__ drvs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int /*<<< orphan*/ ***,size_t*,size_t*) ; 

__attribute__((used)) static HRESULT FUNC6(EDataFlow flow)
{
    WCHAR **ids;
    GUID *guids;
    UINT num, def, i;
    HRESULT hr;

    if(!drvs.pGetEndpointIDs)
        return S_OK;

    hr = drvs.pGetEndpointIDs(flow, &ids, &guids, &num, &def);
    if(FUNC0(hr))
        return hr;

    for(i = 0; i < num; ++i){
        MMDevice *dev;
        dev = FUNC3(ids[i], &guids[i], flow, DEVICE_STATE_ACTIVE,
                def == i);
        FUNC4(dev);
    }

    FUNC2(FUNC1(), 0, guids);
    FUNC2(FUNC1(), 0, ids);

    return S_OK;
}