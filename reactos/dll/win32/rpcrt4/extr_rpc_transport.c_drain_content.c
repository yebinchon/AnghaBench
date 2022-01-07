
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;
typedef int buf ;
typedef int RpcHttpAsyncData ;
typedef int HINTERNET ;
typedef int HANDLE ;
typedef int DWORD ;


 int HTTP_QUERY_CONTENT_LENGTH ;
 int HTTP_QUERY_FLAG_NUMBER ;
 int HttpQueryInfoW (int ,int,int*,int*,int *) ;
 int min (int,int) ;
 scalar_t__ rpcrt4_http_async_read (int ,int *,int ,char*,int) ;

__attribute__((used)) static void drain_content(HINTERNET request, RpcHttpAsyncData *async_data, HANDLE cancel_event)
{
    DWORD count, len = 0, size = sizeof(len);
    char buf[2048];

    HttpQueryInfoW(request, HTTP_QUERY_FLAG_NUMBER|HTTP_QUERY_CONTENT_LENGTH, &len, &size, ((void*)0));
    if (!len) return;
    for (;;)
    {
        count = min(sizeof(buf), len);
        if (rpcrt4_http_async_read(request, async_data, cancel_event, buf, count) <= 0) return;
        len -= count;
    }
}
