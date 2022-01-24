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
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  char* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char**) ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ SystemFolder ; 
 scalar_t__ TemporaryFolder ; 
 scalar_t__ WindowsFolder ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    WCHAR pathW[MAX_PATH];
    IFolder *folder;
    HRESULT hr;
    DWORD ret;
    BSTR path;

    hr = FUNC4(fs3, WindowsFolder, NULL);
    FUNC9(hr == E_POINTER, "got 0x%08x\n", hr);

    hr = FUNC4(fs3, TemporaryFolder+1, NULL);
    FUNC9(hr == E_POINTER, "got 0x%08x\n", hr);

    hr = FUNC4(fs3, TemporaryFolder+1, &folder);
    FUNC9(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC4(fs3, WindowsFolder, &folder);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC6(folder, &path);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    FUNC3(pathW, FUNC0(pathW));
    FUNC9(!FUNC8(pathW, path), "got %s, expected %s\n", FUNC10(path), FUNC10(pathW));
    FUNC7(path);
    FUNC5(folder);

    hr = FUNC4(fs3, SystemFolder, &folder);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC6(folder, &path);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    FUNC1(pathW, FUNC0(pathW));
    FUNC9(!FUNC8(pathW, path), "got %s, expected %s\n", FUNC10(path), FUNC10(pathW));
    FUNC7(path);
    FUNC5(folder);

    hr = FUNC4(fs3, TemporaryFolder, &folder);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC6(folder, &path);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    ret = FUNC2(FUNC0(pathW), pathW);
    if (ret && pathW[ret-1] == '\\')
        pathW[ret-1] = 0;

    FUNC9(!FUNC8(pathW, path), "got %s, expected %s\n", FUNC10(path), FUNC10(pathW));
    FUNC7(path);
    FUNC5(folder);
}