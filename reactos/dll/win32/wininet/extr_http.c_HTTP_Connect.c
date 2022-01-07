
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dwFlags; int dwInternalFlags; int hInternet; int entry; int decoding; int dwContext; int htype; } ;
struct TYPE_10__ {TYPE_1__ hdr; scalar_t__ receive_timeout; scalar_t__ send_timeout; int connect_timeout; int hostPort; void* password; void* userName; void* hostName; TYPE_3__* appInfo; } ;
typedef TYPE_2__ http_session_t ;
struct TYPE_12__ {scalar_t__ htype; int children; int decoding; } ;
struct TYPE_11__ {TYPE_5__ hdr; int connect_timeout; } ;
typedef TYPE_3__ appinfo_t ;
typedef scalar_t__* LPCWSTR ;
typedef int INTERNET_PORT ;
typedef int HINTERNET ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int HTTPSESSIONVtbl ;
 int INET_OPENURL ;
 int INTERNET_STATUS_HANDLE_CREATED ;
 int INTERNET_SendCallback (TYPE_5__*,int ,int ,int *,int) ;
 int TRACE (char*,...) ;
 int WH_HHTTPSESSION ;
 scalar_t__ WH_HINIT ;
 int WININET_AddRef (TYPE_5__*) ;
 TYPE_2__* alloc_object (TYPE_5__*,int *,int) ;
 int assert (int) ;
 void* heap_strdupW (scalar_t__*) ;
 int list_add_head (int *,int *) ;

DWORD HTTP_Connect(appinfo_t *hIC, LPCWSTR lpszServerName,
        INTERNET_PORT serverPort, LPCWSTR lpszUserName,
        LPCWSTR lpszPassword, DWORD dwFlags, DWORD_PTR dwContext,
        DWORD dwInternalFlags, HINTERNET *ret)
{
    http_session_t *session = ((void*)0);

    TRACE("-->\n");

    if (!lpszServerName || !lpszServerName[0])
        return ERROR_INVALID_PARAMETER;

    assert( hIC->hdr.htype == WH_HINIT );

    session = alloc_object(&hIC->hdr, &HTTPSESSIONVtbl, sizeof(http_session_t));
    if (!session)
        return ERROR_OUTOFMEMORY;





    session->hdr.htype = WH_HHTTPSESSION;
    session->hdr.dwFlags = dwFlags;
    session->hdr.dwContext = dwContext;
    session->hdr.dwInternalFlags |= dwInternalFlags;
    session->hdr.decoding = hIC->hdr.decoding;

    WININET_AddRef( &hIC->hdr );
    session->appInfo = hIC;
    list_add_head( &hIC->hdr.children, &session->hdr.entry );

    session->hostName = heap_strdupW(lpszServerName);
    if (lpszUserName && lpszUserName[0])
        session->userName = heap_strdupW(lpszUserName);
    if (lpszPassword && lpszPassword[0])
        session->password = heap_strdupW(lpszPassword);
    session->hostPort = serverPort;
    session->connect_timeout = hIC->connect_timeout;
    session->send_timeout = 0;
    session->receive_timeout = 0;


    if (!(session->hdr.dwInternalFlags & INET_OPENURL))
    {
        INTERNET_SendCallback(&hIC->hdr, dwContext,
                              INTERNET_STATUS_HANDLE_CREATED, &session->hdr.hInternet,
                              sizeof(HINTERNET));
    }






    TRACE("%p --> %p\n", hIC, session);

    *ret = session->hdr.hInternet;
    return ERROR_SUCCESS;
}
