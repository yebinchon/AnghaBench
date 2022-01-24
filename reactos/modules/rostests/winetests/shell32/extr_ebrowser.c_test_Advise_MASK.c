#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; int completed; TYPE_1__ IExplorerBrowserEvents_iface; } ;
typedef  TYPE_1__ IExplorerBrowserEvents ;
typedef  int /*<<< orphan*/  IExplorerBrowser ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int E_INVALIDARG ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int S_OK ; 
 TYPE_2__ ebev ; 
 int /*<<< orphan*/  ebevents ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
    IExplorerBrowser *peb;
    IExplorerBrowserEvents *pebe;
    DWORD cookies[10];
    HRESULT hr;
    UINT i, ref;

    /* Set up our IExplorerBrowserEvents implementation */
    ebev.IExplorerBrowserEvents_iface.lpVtbl = &ebevents;
    pebe = &ebev.IExplorerBrowserEvents_iface;

    FUNC6(&peb);

    if(0)
    {
        /* Crashes on Windows 7 */
        FUNC0(peb, pebe, NULL);
        FUNC0(peb, NULL, &cookies[0]);
    }

    /* Using Unadvise with a cookie that has yet to be given out
     * results in E_INVALIDARG */
    hr = FUNC3(peb, 11);
    FUNC7(hr == E_INVALIDARG, "got (0x%08x)\n", hr);

    /* Add some before initialization */
    for(i = 0; i < 5; i++)
    {
        hr = FUNC0(peb, pebe, &cookies[i]);
        FUNC7(hr == S_OK, "got (0x%08x)\n", hr);
    }

    FUNC5(peb);

    /* Add some after initialization */
    for(i = 5; i < 10; i++)
    {
        hr = FUNC0(peb, pebe, &cookies[i]);
        FUNC7(hr == S_OK, "got (0x%08x)\n", hr);
    }

    FUNC7(ebev.ref == 10, "Got %d\n", ebev.ref);

    ebev.completed = 0;
    FUNC4(peb);
    FUNC8();
    FUNC7(ebev.completed == 10, "Got %d\n", ebev.completed);

    /* Remove a bunch somewhere in the middle */
    for(i = 4; i < 8; i++)
    {
        hr = FUNC3(peb, cookies[i]);
        FUNC7(hr == S_OK, "got (0x%08x)\n", hr);
    }

    ebev.completed = 0;
    FUNC4(peb);
    FUNC8();
    FUNC7(ebev.completed == 6, "Got %d\n", ebev.completed);

    if(0)
    {
        /* Using unadvise with a previously unadvised cookie results
         * in a crash. */
        FUNC3(peb, cookies[5]);
    }

    /* Remove the rest. */
    for(i = 0; i < 10; i++)
    {
        if(i<4||i>7)
        {
            hr = FUNC3(peb, cookies[i]);
            FUNC7(hr == S_OK, "%d: got (0x%08x)\n", i, hr);
        }
    }

    FUNC7(ebev.ref == 0, "Got %d\n", ebev.ref);

    ebev.completed = 0;
    FUNC4(peb);
    FUNC8();
    FUNC7(ebev.completed == 0, "Got %d\n", ebev.completed);

    /* ::Destroy implies ::Unadvise. */
    hr = FUNC0(peb, pebe, &cookies[0]);
    FUNC7(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC7(ebev.ref == 1, "Got %d\n", ebev.ref);

    hr = FUNC1(peb);
    FUNC7(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC7(ebev.ref == 0, "Got %d\n", ebev.ref);

    ref = FUNC2(peb);
    FUNC7(!ref, "Got %d\n", ref);
}