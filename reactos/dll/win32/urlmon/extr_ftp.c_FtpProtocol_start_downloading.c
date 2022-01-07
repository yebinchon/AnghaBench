
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int content_length; int request; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int Protocol ;
typedef int HRESULT ;
typedef TYPE_2__ FtpProtocol ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FtpGetFileSize (int ,int *) ;
 int GetLastError () ;
 int S_OK ;
 int WARN (char*,int ) ;
 TYPE_2__* impl_from_Protocol (int *) ;

__attribute__((used)) static HRESULT FtpProtocol_start_downloading(Protocol *prot)
{
    FtpProtocol *This = impl_from_Protocol(prot);
    DWORD size;
    BOOL res;

    res = FtpGetFileSize(This->base.request, &size);
    if(res)
        This->base.content_length = size;
    else
        WARN("FtpGetFileSize failed: %d\n", GetLastError());

    return S_OK;
}
