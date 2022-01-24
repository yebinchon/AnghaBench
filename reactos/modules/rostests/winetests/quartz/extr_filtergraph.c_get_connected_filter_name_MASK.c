#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * ppPins; } ;
typedef  TYPE_1__ TestFilterImpl ;
struct TYPE_9__ {int /*<<< orphan*/  achName; int /*<<< orphan*/  pGraph; } ;
struct TYPE_8__ {int /*<<< orphan*/  pFilter; } ;
typedef  TYPE_2__ PIN_INFO ;
typedef  int /*<<< orphan*/  IPin ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_3__ FILTER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_FILTER_NAME ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC10(TestFilterImpl *pFilter, char *FilterName)
{
    IPin *pin = NULL;
    PIN_INFO pinInfo;
    FILTER_INFO filterInfo;
    HRESULT hr;

    FilterName[0] = 0;

    hr = FUNC4(pFilter->ppPins[0], &pin);
    FUNC9(hr == S_OK, "IPin_ConnectedTo failed with %x\n", hr);

    hr = FUNC5(pin, &pinInfo);
    FUNC9(hr == S_OK, "IPin_QueryPinInfo failed with %x\n", hr);
    FUNC6(pin);

    FUNC7(0xdeadbeef);
    hr = FUNC1(pinInfo.pFilter, &filterInfo);
    if (hr == S_OK && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC2(pinInfo.pFilter);
        return E_NOTIMPL;
    }
    FUNC9(hr == S_OK, "IBaseFilter_QueryFilterInfo failed with %x\n", hr);
    FUNC2(pinInfo.pFilter);

    FUNC3(filterInfo.pGraph);

    FUNC8(CP_ACP, 0, filterInfo.achName, -1, FilterName, MAX_FILTER_NAME, NULL, NULL);

    return S_OK;
}