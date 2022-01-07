
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IHTMLDOMAttribute_iface; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ HTMLDOMAttribute ;
typedef int HTMLAttributeCollection ;
typedef int HRESULT ;
typedef int DispatchEx ;
typedef int DWORD ;
typedef scalar_t__ DISPID ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int * HTMLAttributeCollection_from_DispatchEx (int *) ;
 int IHTMLDOMAttribute_Release (int *) ;
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ;
 int S_OK ;
 int TRACE (char*,int *,int ,int ,scalar_t__*) ;
 int debugstr_w (int ) ;
 int get_attr_dispid_by_name (int *,int ,scalar_t__*) ;
 int get_domattr (int *,scalar_t__,scalar_t__*,TYPE_1__**) ;

__attribute__((used)) static HRESULT HTMLAttributeCollection_get_dispid(DispatchEx *dispex, BSTR name, DWORD flags, DISPID *dispid)
{
    HTMLAttributeCollection *This = HTMLAttributeCollection_from_DispatchEx(dispex);
    HTMLDOMAttribute *attr;
    LONG pos;
    HRESULT hres;

    TRACE("(%p)->(%s %x %p)\n", This, debugstr_w(name), flags, dispid);

    hres = get_attr_dispid_by_name(This, name, dispid);
    if(FAILED(hres))
        return hres;

    hres = get_domattr(This, *dispid, &pos, &attr);
    if(FAILED(hres))
        return hres;
    IHTMLDOMAttribute_Release(&attr->IHTMLDOMAttribute_iface);

    *dispid = MSHTML_DISPID_CUSTOM_MIN+pos;
    return S_OK;
}
