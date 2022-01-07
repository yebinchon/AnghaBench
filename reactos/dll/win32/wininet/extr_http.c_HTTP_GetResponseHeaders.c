
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status_code; void* statusText; void* version; int receive_timeout; int netconn; } ;
typedef TYPE_1__ http_request_t ;
typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int ERROR_HTTP_INVALID_SERVER_RESPONSE ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int HTTP_ADDHDR_FLAG_ADD ;
 int HTTP_ADDHDR_FLAG_REPLACE ;
 int HTTP_ADDREQ_FLAG_ADD ;
 int HTTP_FreeTokens (char**) ;
 char** HTTP_InterpretHttpHeader (char*) ;
 int HTTP_ProcessHeader (TYPE_1__*,char*,char*,int) ;
 scalar_t__ HTTP_STATUS_CONTINUE ;
 scalar_t__ HTTP_STATUS_OK ;
 int HTTP_clear_response_headers (TYPE_1__*) ;
 int MAX_REPLY_LEN ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 int NETCON_set_timeout (int ,int,int ) ;
 int TRACE (char*,...) ;
 int WARN (char*,int ) ;
 scalar_t__ atoiW (char*) ;
 int debugstr_a (char*) ;
 int debugstr_w (char*) ;
 char* emptyW ;
 char* g_szHttp1_0 ;
 int heap_free (void*) ;
 void* heap_strdupW (char*) ;
 int is_valid_netconn (int ) ;
 int read_line (TYPE_1__*,char*,int*) ;
 char* strchrW (char*,char) ;
 int strncmpW (char*,char*,int) ;
 char* szOK ;
 char* szStatus ;

__attribute__((used)) static DWORD HTTP_GetResponseHeaders(http_request_t *request, INT *len)
{
    INT cbreaks = 0;
    WCHAR buffer[MAX_REPLY_LEN];
    DWORD buflen = MAX_REPLY_LEN;
    INT rc = 0;
    char bufferA[MAX_REPLY_LEN];
    LPWSTR status_code = ((void*)0), status_text = ((void*)0);
    DWORD res = ERROR_HTTP_INVALID_SERVER_RESPONSE;
    BOOL codeHundred = FALSE;

    TRACE("-->\n");

    if(!is_valid_netconn(request->netconn))
        goto lend;


    HTTP_clear_response_headers( request );

    NETCON_set_timeout( request->netconn, FALSE, request->receive_timeout );
    do {



        buflen = MAX_REPLY_LEN;
        if ((res = read_line(request, bufferA, &buflen)))
            goto lend;

        if (!buflen) goto lend;

        rc += buflen;
        MultiByteToWideChar( CP_ACP, 0, bufferA, buflen, buffer, MAX_REPLY_LEN );

        if (!strncmpW(buffer, g_szHttp1_0, 4))
        {

            status_code = strchrW( buffer, ' ' );
            if( !status_code )
                goto lend;
            *status_code++=0;


            status_text = strchrW( status_code, ' ' );
            if( status_text )
                *status_text++=0;

            request->status_code = atoiW(status_code);

            TRACE("version [%s] status code [%s] status text [%s]\n",
               debugstr_w(buffer), debugstr_w(status_code), debugstr_w(status_text) );

            codeHundred = request->status_code == HTTP_STATUS_CONTINUE;
        }
        else if (!codeHundred)
        {
            WARN("No status line at head of response (%s)\n", debugstr_w(buffer));

            heap_free(request->version);
            heap_free(request->statusText);

            request->status_code = HTTP_STATUS_OK;
            request->version = heap_strdupW(g_szHttp1_0);
            request->statusText = heap_strdupW(szOK);

            goto lend;
        }
    } while (codeHundred);


    HTTP_ProcessHeader(request, szStatus, status_code,
                       HTTP_ADDHDR_FLAG_REPLACE | HTTP_ADDHDR_FLAG_ADD);

    heap_free(request->version);
    heap_free(request->statusText);

    request->version = heap_strdupW(buffer);
    request->statusText = heap_strdupW(status_text ? status_text : emptyW);


    *(status_code-1) = ' ';
    if (status_text)
        *(status_text-1) = ' ';


    do
    {
        buflen = MAX_REPLY_LEN;
        if (!read_line(request, bufferA, &buflen) && buflen)
        {
            LPWSTR * pFieldAndValue;

            TRACE("got line %s, now interpreting\n", debugstr_a(bufferA));

            if (!bufferA[0]) break;
            MultiByteToWideChar( CP_ACP, 0, bufferA, buflen, buffer, MAX_REPLY_LEN );

            pFieldAndValue = HTTP_InterpretHttpHeader(buffer);
            if (pFieldAndValue)
            {
                HTTP_ProcessHeader(request, pFieldAndValue[0], pFieldAndValue[1],
                                   HTTP_ADDREQ_FLAG_ADD );
                HTTP_FreeTokens(pFieldAndValue);
            }
        }
        else
        {
            cbreaks++;
            if (cbreaks >= 2)
                break;
        }
    }while(1);

    res = ERROR_SUCCESS;

lend:

    *len = rc;
    TRACE("<--\n");
    return res;
}
