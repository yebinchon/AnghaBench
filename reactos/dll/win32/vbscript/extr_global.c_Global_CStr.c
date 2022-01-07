
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int ) ;
 int debugstr_variant (int *) ;
 int return_bstr (int *,int ) ;
 int to_string (int *,int *) ;

__attribute__((used)) static HRESULT Global_CStr(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    BSTR str;
    HRESULT hres;

    TRACE("%s\n", debugstr_variant(arg));

    hres = to_string(arg, &str);
    if(FAILED(hres))
        return hres;

    return return_bstr(res, str);
}
