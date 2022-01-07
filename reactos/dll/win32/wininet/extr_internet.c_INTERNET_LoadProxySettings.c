
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int proxyEnabled; char* proxy; char* proxyBypass; } ;
typedef TYPE_1__ proxyinfo_t ;
typedef char WCHAR ;
struct TYPE_8__ {int proxyEnabled; int proxyBypass; int proxy; } ;
typedef char* LPWSTR ;
typedef scalar_t__ LPCSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int CP_UNIXCP ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int FreeProxyInfo (TYPE_1__*) ;
 int HKEY_CURRENT_USER ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ MultiByteToWideChar (int ,int ,scalar_t__,int,char*,scalar_t__) ;
 scalar_t__ REG_DWORD ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 int RegOpenKeyW (int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int *,scalar_t__*) ;
 int RegSetValueExW (int ,int ,int ,scalar_t__,int *,int) ;
 int TRACE (char*,...) ;
 int WARN (char*,int ) ;
 int WININET_cs ;
 int debugstr_w (char*) ;
 scalar_t__ getenv (char*) ;
 TYPE_4__* global_proxy ;
 void* heap_alloc (scalar_t__) ;
 int heap_free (char*) ;
 void* heap_strdupW (int ) ;
 int lstrcpyW (char*,char*) ;
 int lstrlenW (char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ parse_proxy_url (TYPE_1__*,char*) ;
 char* strchrW (char*,char) ;
 char* strstrW (char*,char const*) ;
 int szInternetSettings ;
 int szProxyEnable ;
 int szProxyOverride ;
 int szProxyServer ;

__attribute__((used)) static LONG INTERNET_LoadProxySettings( proxyinfo_t *lpwpi )
{
    HKEY key;
    DWORD type, len;
    LPCSTR envproxy;
    LONG ret;

    memset( lpwpi, 0, sizeof(*lpwpi) );

    EnterCriticalSection( &WININET_cs );
    if (global_proxy)
    {
        lpwpi->proxyEnabled = global_proxy->proxyEnabled;
        lpwpi->proxy = heap_strdupW( global_proxy->proxy );
        lpwpi->proxyBypass = heap_strdupW( global_proxy->proxyBypass );
    }
    LeaveCriticalSection( &WININET_cs );

    if ((ret = RegOpenKeyW( HKEY_CURRENT_USER, szInternetSettings, &key )))
    {
        FreeProxyInfo( lpwpi );
        return ret;
    }

    len = sizeof(DWORD);
    if (RegQueryValueExW( key, szProxyEnable, ((void*)0), &type, (BYTE *)&lpwpi->proxyEnabled, &len ) || type != REG_DWORD)
    {
        lpwpi->proxyEnabled = 0;
        if((ret = RegSetValueExW( key, szProxyEnable, 0, REG_DWORD, (BYTE *)&lpwpi->proxyEnabled, sizeof(DWORD) )))
        {
            FreeProxyInfo( lpwpi );
            RegCloseKey( key );
            return ret;
        }
    }

    if (!(envproxy = getenv( "http_proxy" )) || lpwpi->proxyEnabled)
    {

        if (!RegQueryValueExW( key, szProxyServer, ((void*)0), &type, ((void*)0), &len ) && len && (type == REG_SZ))
        {
            LPWSTR szProxy, p;
            static const WCHAR szHttp[] = {'h','t','t','p','=',0};

            if (!(szProxy = heap_alloc(len)))
            {
                RegCloseKey( key );
                FreeProxyInfo( lpwpi );
                return ERROR_OUTOFMEMORY;
            }
            RegQueryValueExW( key, szProxyServer, ((void*)0), &type, (BYTE*)szProxy, &len );


            p = strstrW( szProxy, szHttp );
            if (p)
            {
                p += lstrlenW( szHttp );
                lstrcpyW( szProxy, p );
            }
            p = strchrW( szProxy, ';' );
            if (p) *p = 0;

            FreeProxyInfo( lpwpi );
            lpwpi->proxy = szProxy;
            lpwpi->proxyBypass = ((void*)0);

            TRACE("http proxy (from registry) = %s\n", debugstr_w(lpwpi->proxy));
        }
        else
        {
            TRACE("No proxy server settings in registry.\n");
            FreeProxyInfo( lpwpi );
            lpwpi->proxy = ((void*)0);
            lpwpi->proxyBypass = ((void*)0);
        }
    }
    else if (envproxy)
    {
        WCHAR *envproxyW;

        len = MultiByteToWideChar( CP_UNIXCP, 0, envproxy, -1, ((void*)0), 0 );
        if (!(envproxyW = heap_alloc(len * sizeof(WCHAR))))
        {
            RegCloseKey( key );
            return ERROR_OUTOFMEMORY;
        }
        MultiByteToWideChar( CP_UNIXCP, 0, envproxy, -1, envproxyW, len );

        FreeProxyInfo( lpwpi );
        if (parse_proxy_url( lpwpi, envproxyW ))
        {
            TRACE("http proxy (from environment) = %s\n", debugstr_w(lpwpi->proxy));
            lpwpi->proxyEnabled = 1;
            lpwpi->proxyBypass = ((void*)0);
        }
        else
        {
            WARN("failed to parse http_proxy value %s\n", debugstr_w(envproxyW));
            lpwpi->proxyEnabled = 0;
            lpwpi->proxy = ((void*)0);
            lpwpi->proxyBypass = ((void*)0);
        }
        heap_free( envproxyW );
    }

    if (lpwpi->proxyEnabled)
    {
        TRACE("Proxy is enabled.\n");

        if (!(envproxy = getenv( "no_proxy" )))
        {

            if (!RegQueryValueExW( key, szProxyOverride, ((void*)0), &type, ((void*)0), &len ) && len && (type == REG_SZ))
            {
                LPWSTR szProxy;

                if (!(szProxy = heap_alloc(len)))
                {
                    RegCloseKey( key );
                    return ERROR_OUTOFMEMORY;
                }
                RegQueryValueExW( key, szProxyOverride, ((void*)0), &type, (BYTE*)szProxy, &len );

                heap_free( lpwpi->proxyBypass );
                lpwpi->proxyBypass = szProxy;

                TRACE("http proxy bypass (from registry) = %s\n", debugstr_w(lpwpi->proxyBypass));
            }
            else
            {
                heap_free( lpwpi->proxyBypass );
                lpwpi->proxyBypass = ((void*)0);

                TRACE("No proxy bypass server settings in registry.\n");
            }
        }
        else
        {
            WCHAR *envproxyW;

            len = MultiByteToWideChar( CP_UNIXCP, 0, envproxy, -1, ((void*)0), 0 );
            if (!(envproxyW = heap_alloc(len * sizeof(WCHAR))))
            {
                RegCloseKey( key );
                return ERROR_OUTOFMEMORY;
            }
            MultiByteToWideChar( CP_UNIXCP, 0, envproxy, -1, envproxyW, len );

            heap_free( lpwpi->proxyBypass );
            lpwpi->proxyBypass = envproxyW;

            TRACE("http proxy bypass (from environment) = %s\n", debugstr_w(lpwpi->proxyBypass));
        }
    }
    else TRACE("Proxy is disabled.\n");

    RegCloseKey( key );
    return ERROR_SUCCESS;
}
