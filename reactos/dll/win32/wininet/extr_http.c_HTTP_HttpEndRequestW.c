
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int dwFlags; int dwContext; } ;
struct TYPE_18__ {int status_code; scalar_t__ contentLength; int * verb; TYPE_9__ hdr; int netconn; } ;
typedef TYPE_1__ http_request_t ;
typedef int WCHAR ;
typedef int INT ;
typedef int DWORD_PTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_HTTP_HEADER_NOT_FOUND ;
 scalar_t__ ERROR_INTERNET_OPERATION_CANCELLED ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ HTTP_GetResponseHeaders (TYPE_1__*,int *) ;
 scalar_t__ HTTP_HandleRedirect (TYPE_1__*,int *) ;
 scalar_t__ HTTP_HttpSendRequestW (TYPE_1__*,int *,int ,int *,int ,int ,int) ;
 int HTTP_ProcessCookies (TYPE_1__*) ;
 int HTTP_ProcessExpires (TYPE_1__*) ;
 int HTTP_ProcessLastModified (TYPE_1__*) ;
 int HTTP_ReceiveRequestData (TYPE_1__*) ;




 int INTERNET_FLAG_NO_AUTO_REDIRECT ;
 int INTERNET_STATUS_RECEIVING_RESPONSE ;
 int INTERNET_STATUS_RESPONSE_RECEIVED ;
 int INTERNET_SendCallback (TYPE_9__*,int ,int ,int *,int) ;
 int TRUE ;
 int WARN (char*) ;
 int create_cache_entry (TYPE_1__*) ;
 scalar_t__ drain_content (TYPE_1__*,int ) ;
 int * get_redirect_url (TYPE_1__*) ;
 int heap_free (int *) ;
 int * heap_strdupW (int ) ;
 int http_process_keep_alive (TYPE_1__*) ;
 int http_release_netconn (TYPE_1__*,int) ;
 int is_valid_netconn (int ) ;
 int send_request_complete (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ set_content_length (TYPE_1__*) ;
 int strcmpW (int *,int ) ;
 int szGET ;
 int szHEAD ;

__attribute__((used)) static DWORD HTTP_HttpEndRequestW(http_request_t *request, DWORD dwFlags, DWORD_PTR dwContext)
{
    INT responseLen;
    DWORD res = ERROR_SUCCESS;

    if(!is_valid_netconn(request->netconn)) {
        WARN("Not connected\n");
        send_request_complete(request, 0, ERROR_INTERNET_OPERATION_CANCELLED);
        return ERROR_INTERNET_OPERATION_CANCELLED;
    }

    INTERNET_SendCallback(&request->hdr, request->hdr.dwContext,
                  INTERNET_STATUS_RECEIVING_RESPONSE, ((void*)0), 0);

    if (HTTP_GetResponseHeaders(request, &responseLen) || !responseLen)
        res = ERROR_HTTP_HEADER_NOT_FOUND;

    INTERNET_SendCallback(&request->hdr, request->hdr.dwContext,
                  INTERNET_STATUS_RESPONSE_RECEIVED, &responseLen, sizeof(DWORD));


    http_process_keep_alive(request);
    HTTP_ProcessCookies(request);
    HTTP_ProcessExpires(request);
    HTTP_ProcessLastModified(request);

    if ((res = set_content_length(request)) == ERROR_SUCCESS) {
        if(!request->contentLength)
            http_release_netconn(request, TRUE);
    }

    if (res == ERROR_SUCCESS && !(request->hdr.dwFlags & INTERNET_FLAG_NO_AUTO_REDIRECT))
    {
        switch(request->status_code) {
        case 130:
        case 131:
        case 128:
        case 129: {
            WCHAR *new_url;

            new_url = get_redirect_url(request);
            if(!new_url)
                break;

            if (strcmpW(request->verb, szGET) && strcmpW(request->verb, szHEAD) &&
                request->status_code != 129)
            {
                heap_free(request->verb);
                request->verb = heap_strdupW(szGET);
            }
            http_release_netconn(request, drain_content(request, FALSE) == ERROR_SUCCESS);
            res = HTTP_HandleRedirect(request, new_url);
            heap_free(new_url);
            if (res == ERROR_SUCCESS)
                res = HTTP_HttpSendRequestW(request, ((void*)0), 0, ((void*)0), 0, 0, TRUE);
        }
        }
    }

    if(res == ERROR_SUCCESS)
        create_cache_entry(request);

    if (res == ERROR_SUCCESS && request->contentLength)
        HTTP_ReceiveRequestData(request);
    else
        send_request_complete(request, res == ERROR_SUCCESS, res);

    return res;
}
