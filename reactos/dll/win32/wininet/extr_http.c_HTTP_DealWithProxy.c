
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int szHttp ;
struct TYPE_9__ {int port; int name; } ;
typedef TYPE_1__ server_t ;
typedef int http_session_t ;
struct TYPE_10__ {char* path; TYPE_1__* proxy; } ;
typedef TYPE_2__ http_request_t ;
struct TYPE_11__ {int proxy; } ;
typedef TYPE_3__ appinfo_t ;
typedef char WCHAR ;
typedef int UrlComponents ;
struct TYPE_12__ {int member_0; int dwHostNameLength; scalar_t__ nScheme; int nPort; int lpszHostName; } ;
typedef TYPE_4__ URL_COMPONENTSW ;
typedef int BOOL ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringW (int ,int ,char*,int,char const*,int) ;
 int FALSE ;
 char* INTERNET_FindProxyForProtocol (int ,char const*) ;
 scalar_t__ INTERNET_SCHEME_HTTPS ;
 scalar_t__ InternetCrackUrlW (char*,int ,int ,TYPE_4__*) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int NORM_IGNORECASE ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 TYPE_1__* get_server (int ,int ,int,int ) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int strcatW (char*,char*) ;
 int strcpyW (char*,char const*) ;
 int strlenW (char const*) ;
 int substr (int ,int) ;

__attribute__((used)) static BOOL HTTP_DealWithProxy(appinfo_t *hIC, http_session_t *session, http_request_t *request)
{
    static const WCHAR protoHttp[] = { 'h','t','t','p',0 };
    static const WCHAR szHttp[] = { 'h','t','t','p',':','/','/',0 };
    static WCHAR szNul[] = { 0 };
    URL_COMPONENTSW UrlComponents = { sizeof(UrlComponents) };
    server_t *new_server = ((void*)0);
    WCHAR *proxy;

    proxy = INTERNET_FindProxyForProtocol(hIC->proxy, protoHttp);
    if(!proxy)
        return FALSE;
    if(CSTR_EQUAL != CompareStringW(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE,
                                    proxy, strlenW(szHttp), szHttp, strlenW(szHttp))) {
        WCHAR *proxy_url = heap_alloc(strlenW(proxy)*sizeof(WCHAR) + sizeof(szHttp));
        if(!proxy_url) {
            heap_free(proxy);
            return FALSE;
        }
        strcpyW(proxy_url, szHttp);
        strcatW(proxy_url, proxy);
        heap_free(proxy);
        proxy = proxy_url;
    }

    UrlComponents.dwHostNameLength = 1;
    if(InternetCrackUrlW(proxy, 0, 0, &UrlComponents) && UrlComponents.dwHostNameLength) {
        if( !request->path )
            request->path = szNul;

        new_server = get_server(substr(UrlComponents.lpszHostName, UrlComponents.dwHostNameLength),
                                UrlComponents.nPort, UrlComponents.nScheme == INTERNET_SCHEME_HTTPS, TRUE);
    }
    heap_free(proxy);
    if(!new_server)
        return FALSE;

    request->proxy = new_server;

    TRACE("proxy server=%s port=%d\n", debugstr_w(new_server->name), new_server->port);
    return TRUE;
}
