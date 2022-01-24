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
struct TYPE_3__ {int dwAccessType; int* lpszProxy; int* lpszProxyBypass; } ;
typedef  TYPE_1__ WINHTTP_PROXY_INFO ;
typedef  int WCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_ACCESS_DENIED ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int WINHTTP_ACCESS_TYPE_NAMED_PROXY ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    static WCHAR wideString[] = { 0x226f, 0x575b, 0 };
    static WCHAR normalString[] = { 'f','o','o',0 };
    DWORD type, len;
    BYTE *saved_proxy_settings = NULL;
    WINHTTP_PROXY_INFO info;
    BOOL ret;

    /* FIXME: it would be simpler to read the current settings using
     * WinHttpGetDefaultProxyConfiguration and save them using
     * WinHttpSetDefaultProxyConfiguration, but they appear to have a bug.
     *
     * If a proxy is configured in the registry, e.g. via 'proxcfg -p "foo"',
     * the access type reported by WinHttpGetDefaultProxyConfiguration is 1,
     * WINHTTP_ACCESS_TYPE_NO_PROXY, whereas it should be
     * WINHTTP_ACCESS_TYPE_NAMED_PROXY.
     * If WinHttpSetDefaultProxyConfiguration is called with dwAccessType = 1,
     * the lpszProxy and lpszProxyBypass values are ignored.
     * Thus, if a proxy is set with proxycfg, then calling
     * WinHttpGetDefaultProxyConfiguration followed by
     * WinHttpSetDefaultProxyConfiguration results in the proxy settings
     * getting deleted from the registry.
     *
     * Instead I read the current registry value and restore it directly.
     */
    len = FUNC6( NULL, 0, &type );
    if (len)
    {
        saved_proxy_settings = FUNC2( FUNC1(), 0, len );
        len = FUNC6( saved_proxy_settings, len, &type );
    }

    if (0)
    {
        /* Crashes on Vista and higher */
        FUNC3(0xdeadbeef);
        ret = FUNC4(NULL);
        FUNC7(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
            "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
    }

    /* test with invalid access type */
    info.dwAccessType = 0xdeadbeef;
    info.lpszProxy = info.lpszProxyBypass = NULL;
    FUNC3(0xdeadbeef);
    ret = FUNC4(&info);
    FUNC7(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
        "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    /* at a minimum, the proxy server must be set */
    info.dwAccessType = WINHTTP_ACCESS_TYPE_NAMED_PROXY;
    info.lpszProxy = info.lpszProxyBypass = NULL;
    FUNC3(0xdeadbeef);
    ret = FUNC4(&info);
    FUNC7(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
        "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
    info.lpszProxyBypass = normalString;
    FUNC3(0xdeadbeef);
    ret = FUNC4(&info);
    FUNC7(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
        "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    /* the proxy server can't have wide characters */
    info.lpszProxy = wideString;
    FUNC3(0xdeadbeef);
    ret = FUNC4(&info);
    if (!ret && FUNC0() == ERROR_ACCESS_DENIED)
        FUNC9("couldn't set default proxy configuration: access denied\n");
    else
        FUNC7((!ret && FUNC0() == ERROR_INVALID_PARAMETER) ||
           FUNC5(ret), /* Earlier winhttp versions on W2K/XP */
           "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    info.lpszProxy = normalString;
    FUNC3(0xdeadbeef);
    ret = FUNC4(&info);
    if (!ret && FUNC0() == ERROR_ACCESS_DENIED)
        FUNC9("couldn't set default proxy configuration: access denied\n");
    else
    {
        FUNC7(ret, "WinHttpSetDefaultProxyConfiguration failed: %u\n", FUNC0());
        FUNC7(FUNC0() == ERROR_SUCCESS ||  FUNC5(FUNC0() == 0xdeadbeef) /* < win7 */,
           "got %u\n", FUNC0());
    }
    FUNC8( saved_proxy_settings, len, type );
}