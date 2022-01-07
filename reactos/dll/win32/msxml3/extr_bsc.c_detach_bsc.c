
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IBindStatusCallback_iface; int hres; int * obj; scalar_t__ binding; } ;
typedef TYPE_1__ bsc_t ;
typedef int HRESULT ;


 int IBindStatusCallback_Release (int *) ;
 int IBinding_Abort (scalar_t__) ;

HRESULT detach_bsc(bsc_t *bsc)
{
    HRESULT hres;

    if(bsc->binding)
        IBinding_Abort(bsc->binding);

    bsc->obj = ((void*)0);
    hres = bsc->hres;
    IBindStatusCallback_Release(&bsc->IBindStatusCallback_iface);

    return hres;
}
