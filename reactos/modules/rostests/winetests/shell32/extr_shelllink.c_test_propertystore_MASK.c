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
typedef  int /*<<< orphan*/  IShellLinkW ;
typedef  int /*<<< orphan*/  IShellLinkA ;
typedef  int /*<<< orphan*/  IPropertyStoreCache ;
typedef  int /*<<< orphan*/  IPropertyStore ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ShellLink ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IPropertyStore ; 
 int /*<<< orphan*/  IID_IPropertyStoreCache ; 
 int /*<<< orphan*/  IID_IShellLinkA ; 
 int /*<<< orphan*/  IID_IShellLinkW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    IShellLinkA *linkA;
    IShellLinkW *linkW;
    IPropertyStore *ps;
    HRESULT hr;

    hr = FUNC0(&CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER,
                         &IID_IShellLinkA, (void**)&linkA);
    FUNC7(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(linkA, &IID_IShellLinkW, (void**)&linkW);
    FUNC7(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(linkA, &IID_IPropertyStore, (void**)&ps);
    if (hr == S_OK) {
        IPropertyStoreCache *pscache;

        FUNC2(ps);

        hr = FUNC5(linkW, &IID_IPropertyStore, (void**)&ps);
        FUNC7(hr == S_OK, "got 0x%08x\n", hr);

        hr = FUNC1(ps, &IID_IPropertyStoreCache, (void**)&pscache);
        FUNC7(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

        FUNC2(ps);
    }
    else
        FUNC8("IShellLink doesn't support IPropertyStore.\n");

    FUNC4(linkA);
    FUNC6(linkW);
}