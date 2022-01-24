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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_HANDLER ; 
 int /*<<< orphan*/  CLSID_WineTest ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  IID_IWineTest ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hr;
    IUnknown *pObject;
    IUnknown *pObject2;

    if (FUNC1(FUNC7(TRUE)))
        return;

    hr = FUNC0(&CLSID_WineTest, NULL, CLSCTX_INPROC_HANDLER, &IID_IUnknown, (void **)&pObject);
    FUNC6(hr, "CoCreateInstance");

    if (FUNC4(hr))
    {
        hr = FUNC2(pObject, &IID_IWineTest, (void **)&pObject2);
        FUNC5(hr == E_NOINTERFACE, "IUnknown_QueryInterface on handler for invalid interface returned 0x%08x instead of E_NOINTERFACE\n", hr);

        /* it's a handler as it supports IOleObject */
        hr = FUNC2(pObject, &IID_IOleObject, (void **)&pObject2);
        FUNC6(hr, "IUnknown_QueryInterface(&IID_IOleObject)");
        FUNC3(pObject2);

        FUNC3(pObject);
    }

    FUNC7(FALSE);
}