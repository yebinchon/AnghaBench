
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
 scalar_t__* SysAllocStringLen (scalar_t__*,int) ;
 int SysFreeString (scalar_t__*) ;
 int SysStringLen (scalar_t__*) ;
 int TRACE (char*,int ) ;
 scalar_t__ VT_BSTR ;
 scalar_t__* V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int debugstr_variant (int *) ;
 scalar_t__ isspaceW (scalar_t__) ;
 int return_bstr (int *,scalar_t__*) ;
 int to_string (int *,scalar_t__**) ;

__attribute__((used)) static HRESULT Global_Trim(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    BSTR str, conv_str = ((void*)0);
    WCHAR *begin_ptr, *end_ptr;
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

    for(begin_ptr = str; *begin_ptr && isspaceW(*begin_ptr); begin_ptr++);
    for(end_ptr = str+SysStringLen(str); end_ptr-1 > begin_ptr && isspaceW(*(end_ptr-1)); end_ptr--);

    str = SysAllocStringLen(begin_ptr, end_ptr-begin_ptr);
    SysFreeString(conv_str);
    if(!str)
        return E_OUTOFMEMORY;

    return return_bstr(res, str);
}
