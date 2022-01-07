
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsChannelBSC ;
typedef char WCHAR ;
typedef int IWinInetHttpInfo ;
typedef scalar_t__ DWORD ;


 int HTTP_QUERY_RAW_HEADERS_CRLF ;
 int IWinInetHttpInfo_QueryInfo (int *,int ,char*,scalar_t__*,int *,int *) ;
 char* heap_alloc (scalar_t__) ;
 int heap_free (char*) ;
 int process_response_headers (int *,char const*) ;
 char* strchrW (char*,char) ;

__attribute__((used)) static void query_http_info(nsChannelBSC *This, IWinInetHttpInfo *wininet_info)
{
    const WCHAR *ptr;
    DWORD len = 0;
    WCHAR *buf;

    IWinInetHttpInfo_QueryInfo(wininet_info, HTTP_QUERY_RAW_HEADERS_CRLF, ((void*)0), &len, ((void*)0), ((void*)0));
    if(!len)
        return;

    buf = heap_alloc(len);
    if(!buf)
        return;

    IWinInetHttpInfo_QueryInfo(wininet_info, HTTP_QUERY_RAW_HEADERS_CRLF, buf, &len, ((void*)0), ((void*)0));
    if(!len) {
        heap_free(buf);
        return;
    }

    ptr = strchrW(buf, '\r');
    if(ptr && ptr[1] == '\n') {
        ptr += 2;
        process_response_headers(This, ptr);
    }

    heap_free(buf);
}
