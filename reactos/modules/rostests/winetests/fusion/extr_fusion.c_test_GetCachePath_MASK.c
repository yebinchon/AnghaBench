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
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int ASM_CACHE_GAC ; 
 int ASM_CACHE_ROOT ; 
 int ASM_CACHE_ZAP ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOT_SUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,scalar_t__*) ; 
 scalar_t__ FUNC11 (int,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(void)
{
    CHAR windirA[MAX_PATH];
    WCHAR windir[MAX_PATH];
    WCHAR cachepath[MAX_PATH];
    WCHAR version[MAX_PATH];
    WCHAR path[MAX_PATH];
    DWORD size;
    HRESULT hr;

    static const WCHAR backslash[] = {'\\',0};
    static const WCHAR nochange[] = {'n','o','c','h','a','n','g','e',0};
    static const WCHAR assembly[] = {'a','s','s','e','m','b','l','y',0};
    static const WCHAR gac[] = {'G','A','C',0};

    if (!&pGetCachePath)
    {
        FUNC12("GetCachePath not implemented\n");
        return;
    }

    FUNC0(windirA, MAX_PATH);
    FUNC1(CP_ACP, 0, windirA, -1, windir, MAX_PATH);
    FUNC7(cachepath, windir);
    FUNC4(cachepath, backslash);
    FUNC4(cachepath, assembly);
    FUNC4(cachepath, backslash);
    FUNC4(cachepath, gac);

    /* NULL pwzCachePath, pcchPath is 0 */
    size = 0;
    hr = FUNC11(ASM_CACHE_GAC, NULL, &size);
    FUNC9(hr == E_NOT_SUFFICIENT_BUFFER, "Expected E_NOT_SUFFICIENT_BUFFER, got %08x\n", hr);
    FUNC9(size == FUNC8(cachepath) + 1,
       "Expected %d, got %d\n", FUNC8(cachepath) + 1, size);

    /* NULL pwszCachePath, pcchPath is MAX_PATH */
    size = MAX_PATH;
    hr = FUNC11(ASM_CACHE_GAC, NULL, &size);
    FUNC9(hr == E_NOT_SUFFICIENT_BUFFER, "Expected E_NOT_SUFFICIENT_BUFFER, got %08x\n", hr);
    FUNC9(size == FUNC8(cachepath) + 1,
       "Expected %d, got %d\n", FUNC8(cachepath) + 1, size);

    /* both pwszCachePath and pcchPath NULL */
    hr = FUNC11(ASM_CACHE_GAC, NULL, NULL);
    FUNC9(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    /* NULL pcchPath */
    FUNC7(path, nochange);
    hr = FUNC11(ASM_CACHE_GAC, path, NULL);
    FUNC9(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    FUNC9( !FUNC5( nochange, path ), "Expected %s,  got %s\n", FUNC13(nochange), FUNC13(path));

    /* get the cache path */
    FUNC7(path, nochange);
    size = MAX_PATH;
    hr = FUNC11(ASM_CACHE_GAC, path, &size);
    FUNC9(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC9( !FUNC5( cachepath, path ), "Expected %s,  got %s\n", FUNC13(cachepath), FUNC13(path));

    /* pcchPath has no room for NULL terminator */
    FUNC7(path, nochange);
    size = FUNC8(cachepath);
    hr = FUNC11(ASM_CACHE_GAC, path, &size);
    FUNC9(hr == E_NOT_SUFFICIENT_BUFFER, "Expected E_NOT_SUFFICIENT_BUFFER, got %08x\n", hr);
    FUNC9( !FUNC5( nochange, path ), "Expected %s,  got %s\n", FUNC13(nochange), FUNC13(path));

    FUNC7(cachepath, windir);
    FUNC4(cachepath, backslash);
    FUNC4(cachepath, assembly);

    /* ASM_CACHE_ROOT */
    FUNC7(path, nochange);
    size = MAX_PATH;
    hr = FUNC11(ASM_CACHE_ROOT, path, &size);
    FUNC9(hr == S_OK ||
       FUNC3(hr == E_INVALIDARG), /* .NET 1.1 */
       "Expected S_OK, got %08x\n", hr);
    if (hr == S_OK)
        FUNC9( !FUNC5( cachepath, path ), "Expected %s,  got %s\n", FUNC13(cachepath), FUNC13(path));

    if (&pGetCORVersion)
    {
        CHAR versionA[MAX_PATH];
        CHAR cachepathA[MAX_PATH];
        CHAR nativeimgA[MAX_PATH];
        CHAR zapfmtA[MAX_PATH];

        if (hr == S_OK)
        {
            FUNC6(nativeimgA, "NativeImages_");
#ifdef _WIN64
            lstrcpyA(zapfmtA, "%s\\%s\\%s%s_64");
#else
            FUNC6(zapfmtA, "%s\\%s\\%s%s_32");
#endif
        }
        else
        {
            FUNC6(nativeimgA, "NativeImages1_");
            FUNC6(zapfmtA, "%s\\%s\\%s%s");
        }

        FUNC10(version, MAX_PATH, &size);
        FUNC2(CP_ACP, 0, version, -1, versionA, MAX_PATH, 0, 0);

        FUNC14(cachepathA, zapfmtA, windirA, "assembly", nativeimgA, versionA);
        FUNC1(CP_ACP, 0, cachepathA, -1, cachepath, MAX_PATH);

        /* ASM_CACHE_ZAP */
        FUNC7(path, nochange);
        size = MAX_PATH;
        hr = FUNC11(ASM_CACHE_ZAP, path, &size);
        FUNC9(hr == S_OK, "Expected S_OK, got %08x\n", hr);
        FUNC9( !FUNC5( cachepath, path ), "Expected %s,  got %s\n", FUNC13(cachepath), FUNC13(path));
    }

    /* two flags at once */
    FUNC7(path, nochange);
    size = MAX_PATH;
    hr = FUNC11(ASM_CACHE_GAC | ASM_CACHE_ROOT, path, &size);
    FUNC9(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    FUNC9( !FUNC5( nochange, path ), "Expected %s,  got %s\n", FUNC13(nochange), FUNC13(path));
}