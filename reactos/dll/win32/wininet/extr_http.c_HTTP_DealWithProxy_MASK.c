#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szHttp ;
struct TYPE_9__ {int /*<<< orphan*/  port; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ server_t ;
typedef  int /*<<< orphan*/  http_session_t ;
struct TYPE_10__ {char* path; TYPE_1__* proxy; } ;
typedef  TYPE_2__ http_request_t ;
struct TYPE_11__ {int /*<<< orphan*/  proxy; } ;
typedef  TYPE_3__ appinfo_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UrlComponents ;
struct TYPE_12__ {int member_0; int dwHostNameLength; scalar_t__ nScheme; int /*<<< orphan*/  nPort; int /*<<< orphan*/  lpszHostName; } ;
typedef  TYPE_4__ URL_COMPONENTSW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CSTR_EQUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ INTERNET_SCHEME_HTTPS ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  NORM_IGNORECASE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC12(appinfo_t *hIC, http_session_t *session, http_request_t *request)
{
    static const WCHAR protoHttp[] = { 'h','t','t','p',0 };
    static const WCHAR szHttp[] = { 'h','t','t','p',':','/','/',0 };
    static WCHAR szNul[] = { 0 };
    URL_COMPONENTSW UrlComponents = { sizeof(UrlComponents) };
    server_t *new_server = NULL;
    WCHAR *proxy;

    proxy = FUNC1(hIC->proxy, protoHttp);
    if(!proxy)
        return FALSE;
    if(CSTR_EQUAL != FUNC0(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE,
                                    proxy, FUNC10(szHttp), szHttp, FUNC10(szHttp))) {
        WCHAR *proxy_url = FUNC6(FUNC10(proxy)*sizeof(WCHAR) + sizeof(szHttp));
        if(!proxy_url) {
            FUNC7(proxy);
            return FALSE;
        }
        FUNC9(proxy_url, szHttp);
        FUNC8(proxy_url, proxy);
        FUNC7(proxy);
        proxy = proxy_url;
    }

    UrlComponents.dwHostNameLength = 1;
    if(FUNC2(proxy, 0, 0, &UrlComponents) && UrlComponents.dwHostNameLength) {
        if( !request->path )
            request->path = szNul;

        new_server = FUNC5(FUNC11(UrlComponents.lpszHostName, UrlComponents.dwHostNameLength),
                                UrlComponents.nPort, UrlComponents.nScheme == INTERNET_SCHEME_HTTPS, TRUE);
    }
    FUNC7(proxy);
    if(!new_server)
        return FALSE;

    request->proxy = new_server;

    FUNC3("proxy server=%s port=%d\n", FUNC4(new_server->name), new_server->port);
    return TRUE;
}