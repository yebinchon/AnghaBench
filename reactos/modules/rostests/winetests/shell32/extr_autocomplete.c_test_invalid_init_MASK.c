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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IAutoComplete ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ACLMulti ; 
 int /*<<< orphan*/  CLSID_AutoComplete ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int E_FAIL ; 
 int E_INVALIDARG ; 
 int E_UNEXPECTED ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IACList ; 
 int /*<<< orphan*/  IID_IAutoComplete ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int REGDB_E_CLASSNOTREG ; 
 int S_OK ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/ * hEdit ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/  hinst ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HRESULT hr;
    IAutoComplete *ac;
    IUnknown *acSource;
    HWND edit_control;

    /* AutoComplete instance */
    hr = FUNC0(&CLSID_AutoComplete, NULL, CLSCTX_INPROC_SERVER,
                         &IID_IAutoComplete, (void **)&ac);
    if (hr == REGDB_E_CLASSNOTREG)
    {
        FUNC9("CLSID_AutoComplete is not registered\n");
        return;
    }
    FUNC8(hr == S_OK, "no IID_IAutoComplete (0x%08x)\n", hr);

    /* AutoComplete source */
    hr = FUNC0(&CLSID_ACLMulti, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IACList, (void **)&acSource);
    if (hr == REGDB_E_CLASSNOTREG)
    {
        FUNC9("CLSID_ACLMulti is not registered\n");
        FUNC4(ac);
        return;
    }
    FUNC8(hr == S_OK, "no IID_IACList (0x%08x)\n", hr);

    edit_control = FUNC1(0, "EDIT", "Some text", 0, 10, 10, 300, 300,
                       hMainWnd, NULL, hinst, NULL);
    FUNC8(edit_control != NULL, "Can't create edit control\n");

    /* The refcount of acSource would be incremented on older Windows. */
    hr = FUNC3(ac, NULL, acSource, NULL, NULL);
    FUNC8(hr == E_INVALIDARG ||
       FUNC7(hr == S_OK), /* Win2k/XP/Win2k3 */
       "Init returned 0x%08x\n", hr);
    if (hr == E_INVALIDARG)
    {
        LONG ref;

        FUNC5(acSource);
        ref = FUNC6(acSource);
        FUNC8(ref == 1, "Expected AutoComplete source refcount to be 1, got %d\n", ref);
    }

if (0)
{
    /* Older Windows versions never check the window handle, while newer
     * versions only check for NULL. Subsequent attempts to initialize the
     * object after this call succeeds would fail, because initialization
     * state is determined by whether a non-NULL window handle is stored. */
    hr = FUNC3(ac, (HWND)0xdeadbeef, acSource, NULL, NULL);
    FUNC8(hr == S_OK, "Init returned 0x%08x\n", hr);

    /* Tests crash on older Windows. */
    hr = FUNC3(ac, NULL, NULL, NULL, NULL);
    FUNC8(hr == E_INVALIDARG, "Init returned 0x%08x\n", hr);

    hr = FUNC3(ac, edit_control, NULL, NULL, NULL);
    FUNC8(hr == E_INVALIDARG, "Init returned 0x%08x\n", hr);
}

    /* bind to edit control */
    hr = FUNC3(ac, edit_control, acSource, NULL, NULL);
    FUNC8(hr == S_OK, "Init returned 0x%08x\n", hr);

    /* try invalid parameters after successful initialization .*/
    hr = FUNC3(ac, NULL, NULL, NULL, NULL);
    FUNC8(hr == E_INVALIDARG ||
       hr == E_FAIL, /* Win2k/XP/Win2k3 */
       "Init returned 0x%08x\n", hr);

    hr = FUNC3(ac, NULL, acSource, NULL, NULL);
    FUNC8(hr == E_INVALIDARG ||
       hr == E_FAIL, /* Win2k/XP/Win2k3 */
       "Init returned 0x%08x\n", hr);

    hr = FUNC3(ac, edit_control, NULL, NULL, NULL);
    FUNC8(hr == E_INVALIDARG ||
       hr == E_FAIL, /* Win2k/XP/Win2k3 */
       "Init returned 0x%08x\n", hr);

    /* try initializing twice on the same control */
    hr = FUNC3(ac, edit_control, acSource, NULL, NULL);
    FUNC8(hr == E_FAIL, "Init returned 0x%08x\n", hr);

    /* try initializing with a different control */
    hr = FUNC3(ac, hEdit, acSource, NULL, NULL);
    FUNC8(hr == E_FAIL, "Init returned 0x%08x\n", hr);

    FUNC2(edit_control);

    /* try initializing with a different control after
     * destroying the original initialization control */
    hr = FUNC3(ac, hEdit, acSource, NULL, NULL);
    FUNC8(hr == E_UNEXPECTED ||
       hr == E_FAIL, /* Win2k/XP/Win2k3 */
       "Init returned 0x%08x\n", hr);

    FUNC6(acSource);
    FUNC4(ac);
}