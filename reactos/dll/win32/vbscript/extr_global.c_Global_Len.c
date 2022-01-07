
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int SysFreeString (int ) ;
 int SysStringLen (int ) ;
 int TRACE (char*,int ) ;
 scalar_t__ VT_BSTR ;
 scalar_t__ VT_NULL ;
 int V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int debugstr_variant (int *) ;
 int return_int (int *,int ) ;
 int return_null (int *) ;
 int to_string (int *,int *) ;

__attribute__((used)) static HRESULT Global_Len(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    DWORD len;
    HRESULT hres;

    TRACE("%s\n", debugstr_variant(arg));

    if(V_VT(arg) == VT_NULL)
        return return_null(res);

    if(V_VT(arg) != VT_BSTR) {
        BSTR str;

        hres = to_string(arg, &str);
        if(FAILED(hres))
            return hres;

        len = SysStringLen(str);
        SysFreeString(str);
    }else {
        len = SysStringLen(V_BSTR(arg));
    }

    return return_int(res, len);
}
