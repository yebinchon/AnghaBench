
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int WCHAR ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int * BSTR ;


 int DEFAULT_UNREACHABLE ;
 int E_FAIL ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;
 int SysStringLen (int *) ;
 int TRACE (char*) ;
 scalar_t__ VT_BSTR ;
 scalar_t__ VT_NULL ;
 int * V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_int (int *,int) ;
 int return_null (int *) ;
 int * strstrW (int *,int *) ;
 int to_int (int *,int*) ;

__attribute__((used)) static HRESULT Global_InStr(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    VARIANT *startv, *str1v, *str2v;
    BSTR str1, str2;
    int start, ret;
    HRESULT hres;

    TRACE("\n");

    assert(2 <= args_cnt && args_cnt <= 4);

    switch(args_cnt) {
    case 2:
        startv = ((void*)0);
        str1v = args;
        str2v = args+1;
        break;
    case 3:
        startv = args;
        str1v = args+1;
        str2v = args+2;
        break;
    case 4:
        FIXME("unsupported compare argument %s\n", debugstr_variant(args));
        return E_NOTIMPL;
    DEFAULT_UNREACHABLE;
    }

    if(startv) {
        hres = to_int(startv, &start);
        if(FAILED(hres))
            return hres;
        if(--start < 0) {
            FIXME("start %d\n", start);
            return E_FAIL;
        }
    }else {
        start = 0;
    }

    if(V_VT(str1v) == VT_NULL || V_VT(str2v) == VT_NULL)
        return return_null(res);

    if(V_VT(str1v) != VT_BSTR) {
        FIXME("Unsupported str1 type %s\n", debugstr_variant(str1v));
        return E_NOTIMPL;
    }
    str1 = V_BSTR(str1v);

    if(V_VT(str2v) != VT_BSTR) {
        FIXME("Unsupported str2 type %s\n", debugstr_variant(str2v));
        return E_NOTIMPL;
    }
    str2 = V_BSTR(str2v);

    if(start < SysStringLen(str1)) {
        WCHAR *ptr;

        ptr = strstrW(str1+start, str2);
        ret = ptr ? ptr-str1+1 : 0;
    }else {
        ret = 0;
    }

    return return_int(res, ret);
}
