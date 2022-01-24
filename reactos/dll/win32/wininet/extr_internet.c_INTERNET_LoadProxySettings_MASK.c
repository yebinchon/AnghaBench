#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int proxyEnabled; char* proxy; char* proxyBypass; } ;
typedef  TYPE_1__ proxyinfo_t ;
typedef  char WCHAR ;
struct TYPE_8__ {int proxyEnabled; int /*<<< orphan*/  proxyBypass; int /*<<< orphan*/  proxy; } ;
typedef  char* LPWSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UNIXCP ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*,scalar_t__) ; 
 scalar_t__ REG_DWORD ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WININET_cs ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 TYPE_4__* global_proxy ; 
 void* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (TYPE_1__*,char*) ; 
 char* FUNC19 (char*,char) ; 
 char* FUNC20 (char*,char const*) ; 
 int /*<<< orphan*/  szInternetSettings ; 
 int /*<<< orphan*/  szProxyEnable ; 
 int /*<<< orphan*/  szProxyOverride ; 
 int /*<<< orphan*/  szProxyServer ; 

__attribute__((used)) static LONG FUNC21( proxyinfo_t *lpwpi )
{
    HKEY key;
    DWORD type, len;
    LPCSTR envproxy;
    LONG ret;

    FUNC17( lpwpi, 0, sizeof(*lpwpi) );

    FUNC0( &WININET_cs );
    if (global_proxy)
    {
        lpwpi->proxyEnabled = global_proxy->proxyEnabled;
        lpwpi->proxy = FUNC14( global_proxy->proxy );
        lpwpi->proxyBypass = FUNC14( global_proxy->proxyBypass );
    }
    FUNC2( &WININET_cs );

    if ((ret = FUNC5( HKEY_CURRENT_USER, szInternetSettings, &key )))
    {
        FUNC1( lpwpi );
        return ret;
    }

    len = sizeof(DWORD);
    if (FUNC6( key, szProxyEnable, NULL, &type, (BYTE *)&lpwpi->proxyEnabled, &len ) || type != REG_DWORD)
    {
        lpwpi->proxyEnabled = 0;
        if((ret = FUNC7( key, szProxyEnable, 0, REG_DWORD, (BYTE *)&lpwpi->proxyEnabled, sizeof(DWORD) )))
        {
            FUNC1( lpwpi );
            FUNC4( key );
            return ret;
        }
    }

    if (!(envproxy = FUNC11( "http_proxy" )) || lpwpi->proxyEnabled)
    {
        /* figure out how much memory the proxy setting takes */
        if (!FUNC6( key, szProxyServer, NULL, &type, NULL, &len ) && len && (type == REG_SZ))
        {
            LPWSTR szProxy, p;
            static const WCHAR szHttp[] = {'h','t','t','p','=',0};

            if (!(szProxy = FUNC12(len)))
            {
                FUNC4( key );
                FUNC1( lpwpi );
                return ERROR_OUTOFMEMORY;
            }
            FUNC6( key, szProxyServer, NULL, &type, (BYTE*)szProxy, &len );

            /* find the http proxy, and strip away everything else */
            p = FUNC20( szProxy, szHttp );
            if (p)
            {
                p += FUNC16( szHttp );
                FUNC15( szProxy, p );
            }
            p = FUNC19( szProxy, ';' );
            if (p) *p = 0;

            FUNC1( lpwpi );
            lpwpi->proxy = szProxy;
            lpwpi->proxyBypass = NULL;

            FUNC8("http proxy (from registry) = %s\n", FUNC10(lpwpi->proxy));
        }
        else
        {
            FUNC8("No proxy server settings in registry.\n");
            FUNC1( lpwpi );
            lpwpi->proxy = NULL;
            lpwpi->proxyBypass = NULL;
        }
    }
    else if (envproxy)
    {
        WCHAR *envproxyW;

        len = FUNC3( CP_UNIXCP, 0, envproxy, -1, NULL, 0 );
        if (!(envproxyW = FUNC12(len * sizeof(WCHAR))))
        {
            FUNC4( key );
            return ERROR_OUTOFMEMORY;
        }
        FUNC3( CP_UNIXCP, 0, envproxy, -1, envproxyW, len );

        FUNC1( lpwpi );
        if (FUNC18( lpwpi, envproxyW ))
        {
            FUNC8("http proxy (from environment) = %s\n", FUNC10(lpwpi->proxy));
            lpwpi->proxyEnabled = 1;
            lpwpi->proxyBypass = NULL;
        }
        else
        {
            FUNC9("failed to parse http_proxy value %s\n", FUNC10(envproxyW));
            lpwpi->proxyEnabled = 0;
            lpwpi->proxy = NULL;
            lpwpi->proxyBypass = NULL;
        }
        FUNC13( envproxyW );
    }

    if (lpwpi->proxyEnabled)
    {
        FUNC8("Proxy is enabled.\n");

        if (!(envproxy = FUNC11( "no_proxy" )))
        {
            /* figure out how much memory the proxy setting takes */
            if (!FUNC6( key, szProxyOverride, NULL, &type, NULL, &len ) && len && (type == REG_SZ))
            {
                LPWSTR szProxy;

                if (!(szProxy = FUNC12(len)))
                {
                    FUNC4( key );
                    return ERROR_OUTOFMEMORY;
                }
                FUNC6( key, szProxyOverride, NULL, &type, (BYTE*)szProxy, &len );

                FUNC13( lpwpi->proxyBypass );
                lpwpi->proxyBypass = szProxy;

                FUNC8("http proxy bypass (from registry) = %s\n", FUNC10(lpwpi->proxyBypass));
            }
            else
            {
                FUNC13( lpwpi->proxyBypass );
                lpwpi->proxyBypass = NULL;

                FUNC8("No proxy bypass server settings in registry.\n");
            }
        }
        else
        {
            WCHAR *envproxyW;

            len = FUNC3( CP_UNIXCP, 0, envproxy, -1, NULL, 0 );
            if (!(envproxyW = FUNC12(len * sizeof(WCHAR))))
            {
                FUNC4( key );
                return ERROR_OUTOFMEMORY;
            }
            FUNC3( CP_UNIXCP, 0, envproxy, -1, envproxyW, len );

            FUNC13( lpwpi->proxyBypass );
            lpwpi->proxyBypass = envproxyW;

            FUNC8("http proxy bypass (from environment) = %s\n", FUNC10(lpwpi->proxyBypass));
        }
    }
    else FUNC8("Proxy is disabled.\n");

    FUNC4( key );
    return ERROR_SUCCESS;
}