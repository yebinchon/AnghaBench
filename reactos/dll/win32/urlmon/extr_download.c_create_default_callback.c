
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IBindStatusCallback_iface; } ;
typedef int IBindStatusCallback ;
typedef int HRESULT ;
typedef TYPE_1__ DownloadBSC ;


 int DownloadBSC_Create (int *,int *,TYPE_1__**) ;
 scalar_t__ FAILED (int ) ;
 int IBindStatusCallback_Release (int *) ;
 int wrap_callback (int *,int **) ;

HRESULT create_default_callback(IBindStatusCallback **ret)
{
    DownloadBSC *callback;
    HRESULT hres;

    hres = DownloadBSC_Create(((void*)0), ((void*)0), &callback);
    if(FAILED(hres))
        return hres;

    hres = wrap_callback(&callback->IBindStatusCallback_iface, ret);
    IBindStatusCallback_Release(&callback->IBindStatusCallback_iface);
    return hres;
}
