#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cmdID; } ;
typedef  TYPE_1__ OLECMD ;
typedef  int /*<<< orphan*/  IShellView ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 int /*<<< orphan*/  IID_IShellView ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ OLECMDERR_E_UNKNOWNGROUP ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(void)
{
    IShellFolder *psf_desktop;
    IShellView *psv;
    IOleCommandTarget *poct;
    HRESULT hr;

    hr = FUNC7(&psf_desktop);
    FUNC10(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC3(psf_desktop, NULL, &IID_IShellView, (void**)&psv);
    FUNC10(hr == S_OK, "got (0x%08x)\n", hr);
    if(FUNC8(hr))
    {
        hr = FUNC5(psv, &IID_IOleCommandTarget, (void**)&poct);
        FUNC10(hr == S_OK || FUNC9(hr == E_NOINTERFACE) /* Win95/NT4 */, "Got 0x%08x\n", hr);
        if(FUNC8(hr))
        {
            OLECMD oc;

            hr = FUNC1(poct, NULL, 0, NULL, NULL);
            FUNC10(hr == E_INVALIDARG, "Got 0x%08x\n", hr);

            oc.cmdID = 1;
            hr = FUNC1(poct, NULL, 0, &oc, NULL);
            FUNC10(hr == OLECMDERR_E_UNKNOWNGROUP, "Got 0x%08x\n", hr);

            oc.cmdID = 1;
            hr = FUNC1(poct, NULL, 1, &oc, NULL);
            FUNC10(hr == OLECMDERR_E_UNKNOWNGROUP, "Got 0x%08x\n", hr);

            hr = FUNC0(poct, NULL, 0, 0, NULL, NULL);
            FUNC10(hr == OLECMDERR_E_UNKNOWNGROUP, "Got 0x%08x\n", hr);

            FUNC2(poct);
        }

        FUNC6(psv);
    }

    FUNC4(psf_desktop);
}