
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int request; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int * LPWSTR ;
typedef TYPE_2__ HttpProtocol ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 scalar_t__ HttpQueryInfoW (int ,int ,int *,int *,int *) ;
 int TRACE (char*,int ,scalar_t__) ;
 int * heap_alloc (int ) ;
 int heap_free (int *) ;

__attribute__((used)) static LPWSTR query_http_info(HttpProtocol *This, DWORD option)
{
    LPWSTR ret = ((void*)0);
    DWORD len = 0;
    BOOL res;

    res = HttpQueryInfoW(This->base.request, option, ((void*)0), &len, ((void*)0));
    if (!res && GetLastError() == ERROR_INSUFFICIENT_BUFFER) {
        ret = heap_alloc(len);
        res = HttpQueryInfoW(This->base.request, option, ret, &len, ((void*)0));
    }
    if(!res) {
        TRACE("HttpQueryInfoW(%d) failed: %08x\n", option, GetLastError());
        heap_free(ret);
        return ((void*)0);
    }

    return ret;
}
