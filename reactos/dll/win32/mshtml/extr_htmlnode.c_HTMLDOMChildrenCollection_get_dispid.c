
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT32 ;
struct TYPE_3__ {int nslist; } ;
typedef TYPE_1__ HTMLDOMChildrenCollection ;
typedef int HRESULT ;
typedef int DispatchEx ;
typedef int DWORD ;
typedef scalar_t__ DISPID ;
typedef int* BSTR ;


 scalar_t__ DISPID_CHILDCOL_0 ;
 int DISP_E_UNKNOWNNAME ;
 int S_OK ;
 int TRACE (char*,scalar_t__) ;
 TYPE_1__* impl_from_DispatchEx (int *) ;
 scalar_t__ isdigitW (int) ;
 int nsIDOMNodeList_GetLength (int ,int*) ;

__attribute__((used)) static HRESULT HTMLDOMChildrenCollection_get_dispid(DispatchEx *dispex, BSTR name, DWORD flags, DISPID *dispid)
{
    HTMLDOMChildrenCollection *This = impl_from_DispatchEx(dispex);
    WCHAR *ptr;
    DWORD idx=0;
    UINT32 len = 0;

    for(ptr = name; *ptr && isdigitW(*ptr); ptr++)
        idx = idx*10 + (*ptr-'0');
    if(*ptr)
        return DISP_E_UNKNOWNNAME;

    nsIDOMNodeList_GetLength(This->nslist, &len);
    if(idx >= len)
        return DISP_E_UNKNOWNNAME;

    *dispid = DISPID_CHILDCOL_0 + idx;
    TRACE("ret %x\n", *dispid);
    return S_OK;
}
