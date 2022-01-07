
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int vbdisp_invoke_type_t ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DISPID ;
typedef int BSTR ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int IDispatchEx_GetDispID (int *,int ,int ,int *) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_GetIDsOfNames (int *,int *,int *,int,int ,int *) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 int IID_NULL ;
 int TRACE (char*) ;
 int fdexNameCaseInsensitive ;
 int * unsafe_impl_from_IDispatch (int *) ;
 int vbdisp_get_id (int *,int ,int ,int ,int *) ;

HRESULT disp_get_id(IDispatch *disp, BSTR name, vbdisp_invoke_type_t invoke_type, BOOL search_private, DISPID *id)
{
    IDispatchEx *dispex;
    vbdisp_t *vbdisp;
    HRESULT hres;

    vbdisp = unsafe_impl_from_IDispatch(disp);
    if(vbdisp)
        return vbdisp_get_id(vbdisp, name, invoke_type, search_private, id);

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    if(FAILED(hres)) {
        TRACE("using IDispatch\n");
        return IDispatch_GetIDsOfNames(disp, &IID_NULL, &name, 1, 0, id);
    }

    hres = IDispatchEx_GetDispID(dispex, name, fdexNameCaseInsensitive, id);
    IDispatchEx_Release(dispex);
    return hres;
}
