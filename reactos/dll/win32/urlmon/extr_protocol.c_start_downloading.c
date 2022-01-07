
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cache_file ;
typedef int WCHAR ;
struct TYPE_9__ {int bindf; int flags; int request; TYPE_1__* vtbl; } ;
struct TYPE_8__ {int (* start_downloading ) (TYPE_2__*) ;} ;
typedef TYPE_2__ Protocol ;
typedef int HRESULT ;
typedef int DWORD ;


 int BINDF_NEEDFILE ;
 int BINDSTATUS_CACHEFILENAMEAVAILABLE ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int FLAG_FIRST_CONTINUE_COMPLETE ;
 int INET_E_REDIRECT_FAILED ;
 int INTERNET_OPTION_DATAFILE_NAME ;
 scalar_t__ InternetQueryOptionW (int ,int ,int *,int*) ;
 int MAX_PATH ;
 int S_OK ;
 int protocol_close_connection (TYPE_2__*) ;
 int report_progress (TYPE_2__*,int ,int *) ;
 int report_result (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static HRESULT start_downloading(Protocol *protocol)
{
    HRESULT hres;

    hres = protocol->vtbl->start_downloading(protocol);
    if(FAILED(hres)) {
        if(hres == INET_E_REDIRECT_FAILED)
            return S_OK;
        protocol_close_connection(protocol);
        report_result(protocol, hres);
        return hres;
    }

    if(protocol->bindf & BINDF_NEEDFILE) {
        WCHAR cache_file[MAX_PATH];
        DWORD buflen = sizeof(cache_file);

        if(InternetQueryOptionW(protocol->request, INTERNET_OPTION_DATAFILE_NAME, cache_file, &buflen)) {
            report_progress(protocol, BINDSTATUS_CACHEFILENAMEAVAILABLE, cache_file);
        }else {
            FIXME("Could not get cache file\n");
        }
    }

    protocol->flags |= FLAG_FIRST_CONTINUE_COMPLETE;
    return S_OK;
}
