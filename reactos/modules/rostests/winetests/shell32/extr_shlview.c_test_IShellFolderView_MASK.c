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
typedef  int UINT ;
typedef  int /*<<< orphan*/  IShellView ;
typedef  int /*<<< orphan*/  IShellFolderView ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int HRESULT ;

/* Variables and functions */
 int E_FAIL ; 
 int E_NOTIMPL ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IShellFolderView ; 
 int /*<<< orphan*/  IID_IShellView ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **) ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    IShellFolderView *folderview;
    IShellFolder *desktop;
    IShellView *view;
    IDataObject *obj;
    UINT i;
    HRESULT hr;

    hr = FUNC11(&desktop);
    FUNC13(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC7(desktop, NULL, &IID_IShellView, (void**)&view);
    FUNC13(hr == S_OK, "got (0x%08x)\n", hr);

    hr = FUNC9(view, &IID_IShellFolderView, (void**)&folderview);
    if (hr != S_OK)
    {
        FUNC14("IShellView doesn't provide IShellFolderView on this platform\n");
        FUNC10(view);
        FUNC8(desktop);
        return;
    }

    /* ::MoveIcons */
    obj = FUNC0();
    hr = FUNC2(folderview, obj);
    FUNC13(hr == E_NOTIMPL || FUNC12(hr == S_OK) /* W98 */, "got (0x%08x)\n", hr);
    FUNC1(obj);

    /* ::SetRedraw without list created */
    hr = FUNC6(folderview, TRUE);
    FUNC13(hr == S_OK, "got (0x%08x)\n", hr);

    /* ::QuerySupport */
    hr = FUNC3(folderview, NULL);
    FUNC13(hr == S_OK, "got (0x%08x)\n", hr);
    i = 0xdeadbeef;
    hr = FUNC3(folderview, &i);
    FUNC13(hr == S_OK, "got (0x%08x)\n", hr);
    FUNC13(i == 0xdeadbeef, "got %d\n", i);

    /* ::RemoveObject */
    i = 0xdeadbeef;
    hr = FUNC5(folderview, NULL, &i);
    FUNC13(hr == S_OK || hr == E_FAIL, "got (0x%08x)\n", hr);
    if (hr == S_OK) FUNC13(i == 0 || FUNC12(i == 0xdeadbeef) /* Vista, 2k8 */,
                       "got %d\n", i);

    FUNC4(folderview);

    FUNC10(view);
    FUNC8(desktop);
}