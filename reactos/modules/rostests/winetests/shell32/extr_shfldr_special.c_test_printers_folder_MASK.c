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
struct TYPE_4__ {scalar_t__ uType; int /*<<< orphan*/ * pOleStr; } ;
struct TYPE_5__ {scalar_t__ fmt; TYPE_1__ str; } ;
typedef  TYPE_2__ SHELLDETAILS ;
typedef  int SHCOLSTATEF ;
typedef  int /*<<< orphan*/ * LPITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder2 ;
typedef  int /*<<< orphan*/  IPersistFolder2 ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_Printers ; 
 int /*<<< orphan*/  CSIDL_PRINTERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  IID_IPersistFolder2 ; 
 int /*<<< orphan*/  IID_IShellFolder2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ LVCFMT_LEFT ; 
 int SHCOLSTATE_ONBYDEFAULT ; 
 int SHCOLSTATE_TYPE_INT ; 
 int SHCOLSTATE_TYPE_STR ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ STRRET_WSTR ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void FUNC18(void)
{
    IShellFolder2 *folder;
    IPersistFolder2 *pf;
    SHELLDETAILS details;
    SHCOLSTATEF state;
    LPITEMIDLIST pidl1, pidl2;
    HRESULT hr;
    INT i;

    FUNC1( NULL );

    hr = FUNC0(&CLSID_Printers, NULL, CLSCTX_INPROC_SERVER, &IID_IShellFolder2, (void**)&folder);
    if (hr != S_OK)
    {
        FUNC17("Failed to created IShellFolder2 for Printers folder\n");
        FUNC2();
        return;
    }

if (0)
{
    /* crashes on XP */
    FUNC9(folder, NULL, 0, NULL);
    FUNC8(folder, 0, NULL);
    FUNC5(pf, NULL);
}

    /* 5 columns defined */
    hr = FUNC9(folder, NULL, 6, &details);
    FUNC16(hr == E_NOTIMPL, "got 0x%08x\n", hr);

    hr = FUNC8(folder, 6, &state);
    FUNC16(FUNC15(hr == E_NOTIMPL) || hr == E_INVALIDARG /* Win7 */, "got 0x%08x\n", hr);

    details.str.pOleStr = NULL;
    hr = FUNC9(folder, NULL, 0, &details);
    FUNC16(hr == S_OK || FUNC15(hr == E_NOTIMPL) /* W2K */, "got 0x%08x\n", hr);
    if (FUNC12()) FUNC13(details.str.pOleStr);

    /* test every column if method is implemented */
    if (hr == S_OK)
    {
        FUNC16(details.str.uType == STRRET_WSTR, "got %d\n", details.str.uType);

        for(i = 0; i < 6; i++)
        {
            hr = FUNC9(folder, NULL, i, &details);
            FUNC16(hr == S_OK, "got 0x%08x\n", hr);

            /* all columns are left-aligned */
            FUNC16(details.fmt == LVCFMT_LEFT, "got 0x%x\n", details.fmt);
            /* can't be on w9x at this point, IShellFolder2 unsupported there,
               check present for running Wine with w9x setup */
            if (FUNC12()) FUNC13(details.str.pOleStr);

            hr = FUNC8(folder, i, &state);
            FUNC16(hr == S_OK, "got 0x%08x\n", hr);
            /* all columns are string except document count */
            if (i == 1)
                FUNC16(state == (SHCOLSTATE_TYPE_INT | SHCOLSTATE_ONBYDEFAULT), "got 0x%x\n", state);
            else
                FUNC16(state == (SHCOLSTATE_TYPE_STR | SHCOLSTATE_ONBYDEFAULT), "got 0x%x\n", state);
        }
    }

    /* default pidl */
    hr = FUNC10(folder, &IID_IPersistFolder2, (void**)&pf);
    FUNC16(hr == S_OK, "got 0x%08x\n", hr);

    /* not initialized */
    pidl1 = (void*)0xdeadbeef;
    hr = FUNC5(pf, &pidl1);
    FUNC16(hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC16(pidl1 == NULL, "got %p\n", pidl1);

    hr = FUNC14(NULL, CSIDL_PRINTERS, &pidl2);
    FUNC16(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC6(pf, pidl2);
    FUNC16(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(pf, &pidl1);
    FUNC16(hr == S_OK, "got 0x%08x\n", hr);

    FUNC16(FUNC4(pidl1, pidl2), "expected same PIDL\n");
    FUNC7(pf);

    FUNC3(pidl1);
    FUNC3(pidl2);
    FUNC11(folder);

    FUNC2();
}