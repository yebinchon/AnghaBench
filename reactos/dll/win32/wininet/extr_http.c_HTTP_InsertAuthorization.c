
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HttpAuthInfo {char const* scheme; char* auth_data; scalar_t__ auth_data_len; } ;
typedef int http_request_t ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int HTTP_ADDHDR_FLAG_ADD ;
 int HTTP_ADDHDR_FLAG_REPLACE ;
 int HTTP_ADDHDR_FLAG_REQ ;
 int HTTP_ADDREQ_FLAG_ADD ;
 int HTTP_ProcessHeader (int *,int ,char*,int) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (char*) ;
 char* encode_auth_data (char const*,char*,scalar_t__) ;
 char* get_host_header (int *) ;
 int heap_free (char*) ;
 scalar_t__ retrieve_cached_basic_authorization (char*,int *,char**) ;
 int strcmpW (int ,int ) ;
 scalar_t__ strcmpiW (char const*,char const*) ;
 int szAuthorization ;

__attribute__((used)) static BOOL HTTP_InsertAuthorization( http_request_t *request, struct HttpAuthInfo *pAuthInfo, LPCWSTR header )
{
    static const WCHAR wszBasic[] = {'B','a','s','i','c',0};
    WCHAR *host, *authorization = ((void*)0);

    if (pAuthInfo)
    {
        if (pAuthInfo->auth_data_len)
        {
            if (!(authorization = encode_auth_data(pAuthInfo->scheme, pAuthInfo->auth_data, pAuthInfo->auth_data_len)))
                return FALSE;




            if (strcmpiW(pAuthInfo->scheme, wszBasic))
            {
                heap_free(pAuthInfo->auth_data);
                pAuthInfo->auth_data = ((void*)0);
                pAuthInfo->auth_data_len = 0;
            }
        }

        TRACE("Inserting authorization: %s\n", debugstr_w(authorization));

        HTTP_ProcessHeader(request, header, authorization,
                           HTTP_ADDHDR_FLAG_REQ | HTTP_ADDHDR_FLAG_REPLACE | HTTP_ADDREQ_FLAG_ADD);
        heap_free(authorization);
    }
    else if (!strcmpW(header, szAuthorization) && (host = get_host_header(request)))
    {
        UINT data_len;
        char *data;

        if ((data_len = retrieve_cached_basic_authorization(host, ((void*)0), &data)))
        {
            TRACE("Found cached basic authorization for %s\n", debugstr_w(host));

            if (!(authorization = encode_auth_data(wszBasic, data, data_len)))
            {
                heap_free(data);
                heap_free(host);
                return FALSE;
            }

            TRACE("Inserting authorization: %s\n", debugstr_w(authorization));

            HTTP_ProcessHeader(request, header, authorization,
                               HTTP_ADDHDR_FLAG_REQ | HTTP_ADDHDR_FLAG_REPLACE | HTTP_ADDHDR_FLAG_ADD);
            heap_free(data);
            heap_free(authorization);
        }
        heap_free(host);
    }
    return TRUE;
}
