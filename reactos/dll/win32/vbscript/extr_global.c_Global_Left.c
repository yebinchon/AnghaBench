
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;
 int * SysAllocStringLen (int *,int) ;
 int SysFreeString (int *) ;
 int SysStringLen (int *) ;
 int TRACE (char*,int ,int ) ;
 scalar_t__ VT_BSTR ;
 int * V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int debugstr_variant (int *) ;
 int return_bstr (int *,int *) ;
 int to_int (int *,int*) ;
 int to_string (int *,int **) ;

__attribute__((used)) static HRESULT Global_Left(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    BSTR str, ret, conv_str = ((void*)0);
    int len, str_len;
    HRESULT hres;

    TRACE("(%s %s)\n", debugstr_variant(args+1), debugstr_variant(args));

    if(V_VT(args) == VT_BSTR) {
        str = V_BSTR(args);
    }else {
        hres = to_string(args, &conv_str);
        if(FAILED(hres))
            return hres;
        str = conv_str;
    }

    hres = to_int(args+1, &len);
    if(FAILED(hres))
        return hres;

    if(len < 0) {
        FIXME("len = %d\n", len);
        return E_FAIL;
    }

    str_len = SysStringLen(str);
    if(len > str_len)
        len = str_len;

    ret = SysAllocStringLen(str, len);
    SysFreeString(conv_str);
    if(!ret)
        return E_OUTOFMEMORY;

    return return_bstr(res, ret);
}
