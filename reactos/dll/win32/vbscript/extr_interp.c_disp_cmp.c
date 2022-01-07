
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT_BOOL ;
typedef int IUnknown ;
typedef int IObjectIdentity ;
typedef int IDispatch ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IObjectIdentity ;
 int IID_IUnknown ;
 int IObjectIdentity_IsEqualObject (int *,int *) ;
 int IObjectIdentity_Release (int *) ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;

__attribute__((used)) static HRESULT disp_cmp(IDispatch *disp1, IDispatch *disp2, VARIANT_BOOL *ret)
{
    IObjectIdentity *identity;
    IUnknown *unk1, *unk2;
    HRESULT hres;

    if(disp1 == disp2) {
        *ret = VARIANT_TRUE;
        return S_OK;
    }

    if(!disp1 || !disp2) {
        *ret = VARIANT_FALSE;
        return S_OK;
    }

    hres = IDispatch_QueryInterface(disp1, &IID_IUnknown, (void**)&unk1);
    if(FAILED(hres))
        return hres;

    hres = IDispatch_QueryInterface(disp2, &IID_IUnknown, (void**)&unk2);
    if(FAILED(hres)) {
        IUnknown_Release(unk1);
        return hres;
    }

    if(unk1 == unk2) {
        *ret = VARIANT_TRUE;
    }else {
        hres = IUnknown_QueryInterface(unk1, &IID_IObjectIdentity, (void**)&identity);
        if(SUCCEEDED(hres)) {
            hres = IObjectIdentity_IsEqualObject(identity, unk2);
            IObjectIdentity_Release(identity);
            *ret = hres == S_OK ? VARIANT_TRUE : VARIANT_FALSE;
        }else {
            *ret = VARIANT_FALSE;
        }
    }

    IUnknown_Release(unk1);
    IUnknown_Release(unk2);
    return S_OK;
}
