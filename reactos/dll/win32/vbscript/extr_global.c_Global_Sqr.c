
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int MAKE_VBSERROR (int ) ;
 int VBSE_ILLEGAL_FUNC_CALL ;
 int return_double (int *,int ) ;
 int sqrt (double) ;
 int to_double (int *,double*) ;

__attribute__((used)) static HRESULT Global_Sqr(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;
    double d;

    hres = to_double(arg, &d);
    if(FAILED(hres))
        return hres;

    if(d < 0)
        return MAKE_VBSERROR(VBSE_ILLEGAL_FUNC_CALL);
    else
        return return_double(res, sqrt(d));
}
