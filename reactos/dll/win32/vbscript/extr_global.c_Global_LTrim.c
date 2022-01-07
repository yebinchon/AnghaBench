
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef scalar_t__ WCHAR ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef scalar_t__* BSTR ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__* SysAllocString (scalar_t__*) ;
 int SysFreeString (scalar_t__*) ;
 int TRACE (char*,int ) ;
 scalar_t__ VT_BSTR ;
 scalar_t__* V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int debugstr_variant (int *) ;
 scalar_t__ isspaceW (scalar_t__) ;
 int return_bstr (int *,scalar_t__*) ;
 int to_string (int *,scalar_t__**) ;

__attribute__((used)) static HRESULT Global_LTrim(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    BSTR str, conv_str = ((void*)0);
    WCHAR *ptr;
    HRESULT hres;

    TRACE("%s\n", debugstr_variant(arg));

    if(V_VT(arg) == VT_BSTR) {
        str = V_BSTR(arg);
    }else {
        hres = to_string(arg, &conv_str);
        if(FAILED(hres))
            return hres;
        str = conv_str;
    }

    for(ptr = str; *ptr && isspaceW(*ptr); ptr++);

    str = SysAllocString(ptr);
    SysFreeString(conv_str);
    if(!str)
        return E_OUTOFMEMORY;

    return return_bstr(res, str);
}
