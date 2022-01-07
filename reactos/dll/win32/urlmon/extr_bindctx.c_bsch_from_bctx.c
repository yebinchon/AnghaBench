
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IBindCtx_GetObjectParam (int *,int ,int **) ;
 int IID_IBindStatusCallback ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int bscb_holderW ;

__attribute__((used)) static IBindStatusCallback *bsch_from_bctx(IBindCtx *bctx)
{
    IBindStatusCallback *bsc;
    IUnknown *unk;
    HRESULT hres;

    hres = IBindCtx_GetObjectParam(bctx, bscb_holderW, &unk);
    if(FAILED(hres))
        return ((void*)0);

    hres = IUnknown_QueryInterface(unk, &IID_IBindStatusCallback, (void**)&bsc);
    IUnknown_Release(unk);
    return SUCCEEDED(hres) ? bsc : ((void*)0);
}
