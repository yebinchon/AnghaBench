
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ DISPID ;
typedef int* BSTR ;


 scalar_t__ DISPID_OPTIONCOL_0 ;
 int DISP_E_UNKNOWNNAME ;
 int MSHTML_CUSTOM_DISPID_CNT ;
 int S_OK ;
 int WARN (char*) ;
 scalar_t__ isdigitW (int const) ;

__attribute__((used)) static HRESULT HTMLSelectElement_get_dispid(HTMLDOMNode *iface, BSTR name, DWORD flags, DISPID *dispid)
{
    const WCHAR *ptr;
    DWORD idx = 0;

    for(ptr = name; *ptr && isdigitW(*ptr); ptr++) {
        idx = idx*10 + (*ptr-'0');
        if(idx > MSHTML_CUSTOM_DISPID_CNT) {
            WARN("too big idx\n");
            return DISP_E_UNKNOWNNAME;
        }
    }
    if(*ptr)
        return DISP_E_UNKNOWNNAME;

    *dispid = DISPID_OPTIONCOL_0 + idx;
    return S_OK;
}
