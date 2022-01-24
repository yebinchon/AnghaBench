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
typedef  int /*<<< orphan*/  IMMEndpoint ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ EDataFlow ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IMMEndpoint ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ eRender ; 

__attribute__((used)) static bool FUNC5(IMMDevice *dev)
{
    void *pv;

    if (FUNC0(FUNC2(dev, &IID_IMMEndpoint, &pv)))
        return false;

    IMMEndpoint *ep = pv;
    EDataFlow flow;
    HRESULT hr = FUNC3(ep, &flow);

    FUNC4(ep);
    if (FUNC0(hr) || flow != eRender)
        return false;

    DWORD pdwState;
    hr = FUNC1(dev, &pdwState);
    return !FUNC0(hr) && pdwState == DEVICE_STATE_ACTIVE;
}