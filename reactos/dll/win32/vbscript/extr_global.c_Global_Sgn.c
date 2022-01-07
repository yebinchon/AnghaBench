
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int MAKE_VBSERROR (int ) ;
 int TRACE (char*,int ) ;
 int VBSE_ILLEGAL_NULL_USE ;
 scalar_t__ VT_NULL ;
 scalar_t__ V_VT (int *) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_short (int *,short) ;
 int to_double (int *,double*) ;

__attribute__((used)) static HRESULT Global_Sgn(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    double v;
    short val;
    HRESULT hres;

    TRACE("(%s)\n", debugstr_variant(arg));

    assert(args_cnt == 1);

    if(V_VT(arg) == VT_NULL)
        return MAKE_VBSERROR(VBSE_ILLEGAL_NULL_USE);

    hres = to_double(arg, &v);
    if (FAILED(hres))
        return hres;

    val = v == 0 ? 0 : (v > 0 ? 1 : -1);
    return return_short(res, val);
}
