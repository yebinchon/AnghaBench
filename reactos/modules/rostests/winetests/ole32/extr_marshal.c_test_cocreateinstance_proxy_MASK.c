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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMultiQI ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC ; 
 int /*<<< orphan*/  CLSID_ShellDesktop ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  IID_IMultiQI ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__ (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**)) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    IUnknown *pProxy;
    IMultiQI *pMQI;
    HRESULT hr;

    FUNC7(NULL, COINIT_MULTITHREADED);

    hr = FUNC0(&CLSID_ShellDesktop, NULL, CLSCTX_INPROC, &IID_IUnknown, (void **)&pProxy);
    FUNC6(hr, CoCreateInstance);
    hr = FUNC3(pProxy, &IID_IMultiQI, (void **)&pMQI);
    FUNC5(hr == S_OK, "created object is not a proxy, so was created in the wrong apartment\n");
    if (hr == S_OK)
        FUNC2(pMQI);
    FUNC4(pProxy);

    FUNC1();
}