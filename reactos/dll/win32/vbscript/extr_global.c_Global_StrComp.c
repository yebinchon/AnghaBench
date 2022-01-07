
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int BSTR ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;
 int SysFreeString (int ) ;
 int TRACE (char*,int ,int ) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_short (int *,short) ;
 int strcmpW (int ,int ) ;
 int strcmpiW (int ,int ) ;
 int to_int (int *,int*) ;
 int to_string (int *,int *) ;

__attribute__((used)) static HRESULT Global_StrComp(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    BSTR left, right;
    int mode, ret;
    HRESULT hres;
    short val;

    TRACE("(%s %s ...)\n", debugstr_variant(args), debugstr_variant(args+1));

    assert(args_cnt == 2 || args_cnt == 3);

    if (args_cnt == 3) {
        hres = to_int(args+2, &mode);
        if(FAILED(hres))
            return hres;

        if (mode != 0 && mode != 1) {
            FIXME("unknown compare mode = %d\n", mode);
            return E_FAIL;
        }
    }
    else
        mode = 0;

    hres = to_string(args, &left);
    if(FAILED(hres))
        return hres;

    hres = to_string(args+1, &right);
    if(FAILED(hres))
    {
        SysFreeString(left);
        return hres;
    }

    ret = mode ? strcmpiW(left, right) : strcmpW(left, right);
    val = ret < 0 ? -1 : (ret > 0 ? 1 : 0);

    SysFreeString(left);
    SysFreeString(right);
    return return_short(res, val);
}
