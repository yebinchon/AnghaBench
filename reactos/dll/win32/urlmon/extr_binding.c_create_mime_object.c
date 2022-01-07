
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; int iid; int callback; int mime; int state; } ;
typedef int LPCWSTR ;
typedef int IPersistMoniker ;
typedef int IMonikerProp ;
typedef int HRESULT ;
typedef int CLSID ;
typedef TYPE_1__ Binding ;


 int BINDING_OBJAVAIL ;
 int CLASSIDPROP ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CoCreateInstance (int const*,int *,int,int *,void**) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int IBindStatusCallback_OnObjectAvailable (int ,int *,int ) ;
 int IID_IMonikerProp ;
 int IID_IPersistMoniker ;
 int IMonikerProp_PutProperty (int *,int ,int ) ;
 int IMonikerProp_Release (int *) ;
 int INET_E_CANNOT_INSTANTIATE_OBJECT ;
 int IPersistMoniker_QueryInterface (int *,int *,void**) ;
 int IPersistMoniker_Release (int *) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 int MIMETYPEPROP ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int WARN (char*,int ) ;
 int load_doc_mon (TYPE_1__*,int *) ;

__attribute__((used)) static HRESULT create_mime_object(Binding *binding, const CLSID *clsid, LPCWSTR clsid_str)
{
    IPersistMoniker *persist;
    HRESULT hres;

    hres = CoCreateInstance(clsid, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
                            &binding->iid, (void**)&binding->obj);
    if(FAILED(hres)) {
        WARN("CoCreateInstance failed: %08x\n", hres);
        return INET_E_CANNOT_INSTANTIATE_OBJECT;
    }

    binding->state |= BINDING_OBJAVAIL;

    hres = IUnknown_QueryInterface(binding->obj, &IID_IPersistMoniker, (void**)&persist);
    if(SUCCEEDED(hres)) {
        IMonikerProp *prop;

        hres = IPersistMoniker_QueryInterface(persist, &IID_IMonikerProp, (void**)&prop);
        if(SUCCEEDED(hres)) {
            IMonikerProp_PutProperty(prop, MIMETYPEPROP, binding->mime);
            IMonikerProp_PutProperty(prop, CLASSIDPROP, clsid_str);
            IMonikerProp_Release(prop);
        }

        load_doc_mon(binding, persist);

        IPersistMoniker_Release(persist);
    }else {
        FIXME("Could not get IPersistMoniker: %08x\n", hres);

    }

    IBindStatusCallback_OnObjectAvailable(binding->callback, &binding->iid, binding->obj);

    return S_OK;
}
