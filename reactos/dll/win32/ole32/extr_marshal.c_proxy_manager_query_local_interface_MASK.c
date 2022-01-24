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
struct proxy_manager {int /*<<< orphan*/  IClientSecurity_iface; int /*<<< orphan*/  IMarshal_iface; int /*<<< orphan*/  IMultiQI_iface; } ;
struct ifproxy {void* iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClientSecurity ; 
 int /*<<< orphan*/  IID_IMarshal ; 
 int /*<<< orphan*/  IID_IMultiQI ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct proxy_manager*,int /*<<< orphan*/ ,struct ifproxy**) ; 

__attribute__((used)) static HRESULT FUNC8(struct proxy_manager * This, REFIID riid, void ** ppv)
{
    HRESULT hr;
    struct ifproxy * ifproxy;

    FUNC5("%s\n", FUNC6(riid));

    if (FUNC4(riid, &IID_IUnknown) ||
        FUNC4(riid, &IID_IMultiQI))
    {
        *ppv = &This->IMultiQI_iface;
        FUNC2(&This->IMultiQI_iface);
        return S_OK;
    }
    if (FUNC4(riid, &IID_IMarshal))
    {
        *ppv = &This->IMarshal_iface;
        FUNC1(&This->IMarshal_iface);
        return S_OK;
    }
    if (FUNC4(riid, &IID_IClientSecurity))
    {
        *ppv = &This->IClientSecurity_iface;
        FUNC0(&This->IClientSecurity_iface);
        return S_OK;
    }

    hr = FUNC7(This, riid, &ifproxy);
    if (hr == S_OK)
    {
        *ppv = ifproxy->iface;
        FUNC3((IUnknown *)*ppv);
        return S_OK;
    }

    *ppv = NULL;
    return E_NOINTERFACE;
}