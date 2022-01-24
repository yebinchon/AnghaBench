#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_4__ {int ref; } ;
typedef  TYPE_1__ IFileDialogEventsImpl ;
typedef  int /*<<< orphan*/  IFileDialogEvents ;
typedef  int /*<<< orphan*/  IFileDialog ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int E_INVALIDARG ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(IFileDialog *pfd)
{
    IFileDialogEventsImpl *pfdeimpl;
    IFileDialogEvents *pfde;
    DWORD cookie[10];
    UINT i;
    HRESULT hr;

    pfde = FUNC0();
    pfdeimpl = FUNC5(pfde);

    /* Null pointer tests crash on Windows 10 16299 or newer */
    if (0)
    {
        hr = FUNC2(pfd, NULL, NULL);
        FUNC6(hr == E_INVALIDARG, "got 0x%08x\n", hr);
        hr = FUNC2(pfd, pfde, NULL);
        FUNC6(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    }
    hr = FUNC2(pfd, NULL, &cookie[0]);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC6(pfdeimpl->ref == 1, "got ref %d\n", pfdeimpl->ref);
    FUNC4(pfdeimpl);

    hr = FUNC3(pfd, 0);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    for(i = 0; i < 10; i++) {
        hr = FUNC2(pfd, pfde, &cookie[i]);
        FUNC6(hr == S_OK, "got 0x%08x\n", hr);
        FUNC6(cookie[i] == i+cookie[0], "Got cookie: %d\n", cookie[i]);
    }
    FUNC6(pfdeimpl->ref == 10+1, "got ref %d\n", pfdeimpl->ref);
    FUNC4(pfdeimpl);

    for(i = 3; i < 7; i++) {
        hr = FUNC3(pfd, cookie[i]);
        FUNC6(hr == S_OK, "got 0x%08x\n", hr);
    }
    FUNC6(pfdeimpl->ref == 6+1, "got ref %d\n", pfdeimpl->ref);
    FUNC4(pfdeimpl);

    for(i = 0; i < 3; i++) {
        hr = FUNC3(pfd, cookie[i]);
        FUNC6(hr == S_OK, "got 0x%08x\n", hr);
    }
    FUNC6(pfdeimpl->ref == 3+1, "got ref %d\n", pfdeimpl->ref);
    FUNC4(pfdeimpl);

    for(i = 7; i < 10; i++) {
        hr = FUNC3(pfd, cookie[i]);
        FUNC6(hr == S_OK, "got 0x%08x\n", hr);
    }
    FUNC6(pfdeimpl->ref == 1, "got ref %d\n", pfdeimpl->ref);
    FUNC4(pfdeimpl);

    hr = FUNC3(pfd, cookie[9]+1);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC6(pfdeimpl->ref == 1, "got ref %d\n", pfdeimpl->ref);
    FUNC4(pfdeimpl);

    hr = FUNC2(pfd, pfde, &cookie[0]);
    FUNC6(hr == S_OK, "got 0x%08x\n", hr);
    FUNC6(cookie[0] >= 1, "got cookie: %d\n", cookie[0]);
    FUNC6(pfdeimpl->ref == 1+1, "got ref %d\n", pfdeimpl->ref);
    FUNC4(pfdeimpl);

    hr = FUNC3(pfd, cookie[0]);

    if(0)
    {
        /* Unadvising already unadvised cookies crashes on
           Windows 7. */
        FUNC3(pfd, cookie[0]);
    }


    FUNC1(pfde);
}