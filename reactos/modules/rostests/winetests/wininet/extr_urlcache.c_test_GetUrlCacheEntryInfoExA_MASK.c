#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int CacheEntryType; } ;
typedef  TYPE_1__ INTERNET_CACHE_ENTRY_INFOA ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_ENTRY_ATTRIBUTE_FC ; 
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,TYPE_1__*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*) ; 
 int ie10_cache ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ old_ie ; 
 char* test_url ; 
 int /*<<< orphan*/  test_urlW ; 

__attribute__((used)) static void FUNC11(void)
{
    BOOL ret;
    DWORD cbCacheEntryInfo, cbRedirectUrl;
    INTERNET_CACHE_ENTRY_INFOA *lpCacheEntryInfo;

    FUNC6(0xdeadbeef);
    ret = FUNC2(NULL, NULL, NULL, NULL, NULL, NULL, 0);
    FUNC10(!ret, "GetUrlCacheEntryInfoEx with NULL URL and NULL args should have failed\n");
    FUNC10(FUNC0() == ERROR_INVALID_PARAMETER,
       "GetUrlCacheEntryInfoEx with NULL URL and NULL args should have set last error to ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());

    cbCacheEntryInfo = sizeof(INTERNET_CACHE_ENTRY_INFOA);
    FUNC6(0xdeadbeef);
    ret = FUNC2("", NULL, &cbCacheEntryInfo, NULL, NULL, NULL, 0);
    FUNC10(!ret, "GetUrlCacheEntryInfoEx with zero-length buffer should fail\n");
    FUNC10(FUNC0() == ERROR_FILE_NOT_FOUND,
       "GetUrlCacheEntryInfoEx should have set last error to ERROR_FILE_NOT_FOUND instead of %d\n", FUNC0());

    ret = FUNC2(test_url, NULL, NULL, NULL, NULL, NULL, 0);
    FUNC10(ret, "GetUrlCacheEntryInfoEx with NULL args failed with error %d\n", FUNC0());

    cbCacheEntryInfo = 0;
    FUNC6(0xdeadbeef);
    ret = FUNC2(test_url, NULL, &cbCacheEntryInfo, NULL, NULL, NULL, 0);
    FUNC10(!ret, "GetUrlCacheEntryInfoEx with zero-length buffer should fail\n");
    FUNC10(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "GetUrlCacheEntryInfoEx should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\n", FUNC0());

    lpCacheEntryInfo = FUNC4(FUNC1(), 0, cbCacheEntryInfo);

    FUNC6(0xdeadbeef);
    ret = FUNC2(test_url, NULL, NULL, NULL, NULL, NULL, 0x200 /*GET_INSTALLED_ENTRY*/);
    FUNC10(ret == ie10_cache, "GetUrlCacheEntryInfoEx returned %x\n", ret);
    if (!ret) FUNC10(FUNC0() == ERROR_FILE_NOT_FOUND,
            "GetUrlCacheEntryInfoEx should have set last error to ERROR_FILE_NOT_FOUND instead of %d\n", FUNC0());

    /* Unicode version of function seems to ignore 0x200 flag */
    ret = FUNC3(test_urlW, NULL, NULL, NULL, NULL, NULL, 0x200 /*GET_INSTALLED_ENTRY*/);
    FUNC10(ret || FUNC8(old_ie && !ret), "GetUrlCacheEntryInfoExW failed with error %d\n", FUNC0());

    ret = FUNC2(test_url, lpCacheEntryInfo, &cbCacheEntryInfo, NULL, NULL, NULL, 0);
    FUNC10(ret, "GetUrlCacheEntryInfoEx failed with error %d\n", FUNC0());

    if (ret) FUNC9("GetUrlCacheEntryInfoEx", lpCacheEntryInfo);

    lpCacheEntryInfo->CacheEntryType |= 0x10000000; /* INSTALLED_CACHE_ENTRY */
    ret = FUNC7(test_url, lpCacheEntryInfo, CACHE_ENTRY_ATTRIBUTE_FC);
    FUNC10(ret, "SetUrlCacheEntryInfoA failed with error %d\n", FUNC0());

    FUNC6(0xdeadbeef);
    ret = FUNC2(test_url, NULL, NULL, NULL, NULL, NULL, 0x200 /*GET_INSTALLED_ENTRY*/);
    FUNC10(ret, "GetUrlCacheEntryInfoEx failed with error %d\n", FUNC0());

    cbCacheEntryInfo = 100000;
    FUNC6(0xdeadbeef);
    ret = FUNC2(test_url, NULL, &cbCacheEntryInfo, NULL, NULL, NULL, 0);
    FUNC10(!ret, "GetUrlCacheEntryInfoEx with zero-length buffer should fail\n");
    FUNC10(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "GetUrlCacheEntryInfoEx should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\n", FUNC0());

    FUNC5(FUNC1(), 0, lpCacheEntryInfo);

    /* Querying the redirect URL fails with ERROR_INVALID_PARAMETER */
    FUNC6(0xdeadbeef);
    ret = FUNC2(test_url, NULL, NULL, NULL, &cbRedirectUrl, NULL, 0);
    FUNC10(!ret, "GetUrlCacheEntryInfoEx should have failed\n");
    FUNC10(FUNC0() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
    FUNC6(0xdeadbeef);
    ret = FUNC2(test_url, NULL, &cbCacheEntryInfo, NULL, &cbRedirectUrl, NULL, 0);
    FUNC10(!ret, "GetUrlCacheEntryInfoEx should have failed\n");
    FUNC10(FUNC0() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
}