
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef void* WCHAR ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef void** BSTR ;


 scalar_t__ FAILED (int ) ;
 int SysStringLen (void**) ;
 int TRACE (char*,int ) ;
 int debugstr_variant (int *) ;
 int return_bstr (int *,void**) ;
 int to_string (int *,void***) ;

__attribute__((used)) static HRESULT Global_StrReverse(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    WCHAR *ptr1, *ptr2, ch;
    BSTR ret;
    HRESULT hres;

    TRACE("%s\n", debugstr_variant(arg));

    hres = to_string(arg, &ret);
    if(FAILED(hres))
        return hres;

    ptr1 = ret;
    ptr2 = ret + SysStringLen(ret)-1;
    while(ptr1 < ptr2) {
        ch = *ptr1;
        *ptr1++ = *ptr2;
        *ptr2-- = ch;
    }

    return return_bstr(res, ret);
}
