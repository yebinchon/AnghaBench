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
typedef  int /*<<< orphan*/  sfvc ;
typedef  int /*<<< orphan*/ * ULONG ;
struct TYPE_4__ {int cbSize; int /*<<< orphan*/ * pshf; } ;
typedef  TYPE_1__ SFV_CREATE ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IShellView ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/ * E_UNEXPECTED ; 
 int /*<<< orphan*/  IID_CDefView ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void)
{
    IShellFolder *desktop;
    IShellView *psv;
    SFV_CREATE sfvc;
    ULONG refCount;
    IUnknown *unk;
    HRESULT hr;

    hr = FUNC5(&desktop);
    FUNC7(hr == S_OK, "got (0x%08x)\n", hr);

    if (0)
    {
        /* crash on win7 */
        FUNC4(NULL, NULL);
    }

    psv = (void *)0xdeadbeef;
    hr = FUNC4(NULL, &psv);
    FUNC7(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    FUNC7(psv == NULL, "psv = %p\n", psv);

    FUNC6(&sfvc, 0, sizeof(sfvc));
    psv = (void *)0xdeadbeef;
    hr = FUNC4(&sfvc, &psv);
    FUNC7(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    FUNC7(psv == NULL, "psv = %p\n", psv);

    FUNC6(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc) - 1;
    psv = (void *)0xdeadbeef;
    hr = FUNC4(&sfvc, &psv);
    FUNC7(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    FUNC7(psv == NULL, "psv = %p\n", psv);

    FUNC6(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc) + 1;
    psv = (void *)0xdeadbeef;
    hr = FUNC4(&sfvc, &psv);
    FUNC7(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    FUNC7(psv == NULL, "psv = %p\n", psv);

if (0)
{
    /* Crashes on NULL 'pshf' on XP/2k3 */
    FUNC6(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc);
    psv = (void *)0xdeadbeef;
    hr = FUNC4(&sfvc, &psv);
    FUNC7(hr == E_UNEXPECTED, "Got 0x%08x\n", hr);
    FUNC7(psv == NULL, "psv = %p\n", psv);
}
    FUNC6(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc) - 1;
    sfvc.pshf = desktop;
    psv = (void *)0xdeadbeef;
    hr = FUNC4(&sfvc, &psv);
    FUNC7(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    FUNC7(psv == NULL, "psv = %p\n", psv);

    FUNC6(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc);
    sfvc.pshf = desktop;
    psv = NULL;
    hr = FUNC4(&sfvc, &psv);
    FUNC7(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC7(psv != NULL, "psv = %p\n", psv);

    hr = FUNC1(psv, &IID_CDefView, (void **)&unk);
    FUNC7(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC7(unk == (IUnknown *)psv, "got %p\n", unk);
    FUNC3(unk);

    refCount = FUNC2(psv);
    FUNC7(refCount == 0, "refCount = %u\n", refCount);

    FUNC0(desktop);
}