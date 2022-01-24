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
typedef  float WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IAssemblyCache ;
typedef  int HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int COR_E_ASSEMBLYEXPECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INVALID_NAME ; 
 int E_INVALIDARG ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED ; 
 int IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    IAssemblyCache *cache;
    HRESULT hr;
    ULONG disp;
    DWORD attr;
    char dllpath[MAX_PATH];

    static const WCHAR empty[] = {0};
    static const WCHAR noext[] = {'f','i','l','e',0};
    static const WCHAR badext[] = {'f','i','l','e','.','b','a','d',0};
    static const WCHAR dllext[] = {'f','i','l','e','.','d','l','l',0};
    static const WCHAR exeext[] = {'f','i','l','e','.','e','x','e',0};
    static const WCHAR testdll[] = {'t','e','s','t','.','d','l','l',0};
    static const WCHAR winedll[] = {'w','i','n','e','.','d','l','l',0};
    static const WCHAR wine[] = {'w','i','n','e',0};

    FUNC8("test.dll", 100);
    FUNC7("wine.dll");

    hr = FUNC10(&cache, 0);
    FUNC9(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    /* NULL pszManifestFilePath */
    hr = FUNC4(cache, 0, NULL, NULL);
    FUNC9(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    /* empty pszManifestFilePath */
    hr = FUNC4(cache, 0, empty, NULL);
    FUNC9(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    /* pszManifestFilePath has no extension */
    hr = FUNC4(cache, 0, noext, NULL);
    FUNC9(hr == FUNC3(ERROR_INVALID_NAME),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_NAME), got %08x\n", hr);

    /* pszManifestFilePath has bad extension */
    hr = FUNC4(cache, 0, badext, NULL);
    FUNC9(hr == FUNC3(ERROR_INVALID_NAME),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_NAME), got %08x\n", hr);

    /* pszManifestFilePath has dll extension */
    hr = FUNC4(cache, 0, dllext, NULL);
    FUNC9(hr == FUNC3(ERROR_FILE_NOT_FOUND),
       "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %08x\n", hr);

    /* pszManifestFilePath has exe extension */
    hr = FUNC4(cache, 0, exeext, NULL);
    FUNC9(hr == FUNC3(ERROR_FILE_NOT_FOUND),
       "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %08x\n", hr);

    /* empty file */
    hr = FUNC4(cache, 0, testdll, NULL);
    FUNC9(hr == COR_E_ASSEMBLYEXPECTED,
       "Expected COR_E_ASSEMBLYEXPECTED, got %08x\n", hr);

    /* wine assembly */
    hr = FUNC4(cache, 0, winedll, NULL);
    FUNC9(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC2(dllpath, MAX_PATH);
    FUNC11(dllpath, "\\assembly\\GAC_MSIL\\wine\\\\1.0.0.0__2d03617b1c31e2f5\\wine.dll");

    attr = FUNC1(dllpath);
    FUNC9(attr != INVALID_FILE_ATTRIBUTES, "Expected assembly to exist\n");

    /* uninstall the assembly from the GAC */
    disp = 0xf00dbad;
    hr = FUNC6(cache, 0, wine, NULL, &disp);
    FUNC9(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC9(disp == IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED,
       "Expected IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED, got %d\n", disp);

    attr = FUNC1(dllpath);
    FUNC9(attr == INVALID_FILE_ATTRIBUTES, "Expected assembly not to exist\n");

    disp = 0xf00dbad;
    hr = FUNC6(cache, 0, wine, NULL, &disp);
    FUNC9(hr == S_FALSE, "Expected S_FALSE, got %08x\n", hr);
    FUNC9(disp == IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED,
       "Expected IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED, got %d\n", disp);

    FUNC0("test.dll");
    FUNC0("wine.dll");
    FUNC5(cache);
}