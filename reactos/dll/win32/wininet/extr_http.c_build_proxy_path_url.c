
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* path; TYPE_1__* server; } ;
typedef TYPE_2__ http_request_t ;
typedef char WCHAR ;
struct TYPE_4__ {char* scheme_host_port; } ;
typedef int DWORD ;


 int TRACE (char*,int ) ;
 int debugstr_w (char*) ;
 char* heap_alloc (int) ;
 int memcpy (char*,char*,int) ;
 int strcpyW (char*,char*) ;
 int strlenW (char*) ;

__attribute__((used)) static WCHAR *build_proxy_path_url(http_request_t *req)
{
    DWORD size, len;
    WCHAR *url;

    len = strlenW(req->server->scheme_host_port);
    size = len + strlenW(req->path) + 1;
    if(*req->path != '/')
        size++;
    url = heap_alloc(size * sizeof(WCHAR));
    if(!url)
        return ((void*)0);

    memcpy(url, req->server->scheme_host_port, len*sizeof(WCHAR));
    if(*req->path != '/')
        url[len++] = '/';

    strcpyW(url+len, req->path);

    TRACE("url=%s\n", debugstr_w(url));
    return url;
}
