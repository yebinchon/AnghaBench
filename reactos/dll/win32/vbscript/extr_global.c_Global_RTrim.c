
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int WCHAR ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int * SysAllocStringLen (int *,int) ;
 int SysFreeString (int *) ;
 int SysStringLen (int *) ;
 int TRACE (char*,int ) ;
 scalar_t__ VT_BSTR ;
 int * V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int debugstr_variant (int *) ;
 scalar_t__ isspaceW (int ) ;
 int return_bstr (int *,int *) ;
 int to_string (int *,int **) ;

__attribute__((used)) static HRESULT Global_RTrim(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
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

    for(ptr = str+SysStringLen(str); ptr-1 > str && isspaceW(*(ptr-1)); ptr--);

    str = SysAllocStringLen(str, ptr-str);
    SysFreeString(conv_str);
    if(!str)
        return E_OUTOFMEMORY;

    return return_bstr(res, str);
}
