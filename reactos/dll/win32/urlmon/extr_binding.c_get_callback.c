
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
 int bscb_holderW ;
 int create_default_callback (int **) ;

__attribute__((used)) static HRESULT get_callback(IBindCtx *pbc, IBindStatusCallback **callback)
{
    IUnknown *unk;
    HRESULT hres;

    hres = IBindCtx_GetObjectParam(pbc, bscb_holderW, &unk);
    if(FAILED(hres))
        return create_default_callback(callback);

    hres = IUnknown_QueryInterface(unk, &IID_IBindStatusCallback, (void**)callback);
    IUnknown_Release(unk);
    return hres;
}
