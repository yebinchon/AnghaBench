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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IFolder ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_Folder ; 
 int /*<<< orphan*/ * CTL_E_PATHNOTFOUND ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/ * E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const WCHAR dummyW[] = {'d','u','m','m','y',0};
    WCHAR buffW[MAX_PATH];
    IFolder *folder;
    HRESULT hr;
    BSTR str;

    folder = (void*)0xdeadbeef;
    hr = FUNC1(fs3, NULL, &folder);
    FUNC5(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC5(folder == NULL, "got %p\n", folder);

    hr = FUNC1(fs3, NULL, NULL);
    FUNC5(hr == E_POINTER, "got 0x%08x\n", hr);

    /* something that doesn't exist */
    str = FUNC3(dummyW);

    hr = FUNC1(fs3, str, NULL);
    FUNC5(hr == E_POINTER, "got 0x%08x\n", hr);

    folder = (void*)0xdeadbeef;
    hr = FUNC1(fs3, str, &folder);
    FUNC5(hr == CTL_E_PATHNOTFOUND, "got 0x%08x\n", hr);
    FUNC5(folder == NULL, "got %p\n", folder);
    FUNC4(str);

    FUNC0(buffW, MAX_PATH);
    str = FUNC3(buffW);
    hr = FUNC1(fs3, str, &folder);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    FUNC4(str);
    FUNC6(folder, &CLSID_Folder);
    FUNC2(folder);
}