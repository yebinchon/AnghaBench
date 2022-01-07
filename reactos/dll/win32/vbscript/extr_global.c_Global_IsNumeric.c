
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 int SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_bool (int *,int ) ;
 int to_double (int *,double*) ;

__attribute__((used)) static HRESULT Global_IsNumeric(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;
    double d;

    TRACE("(%s)\n", debugstr_variant(arg));

    assert(args_cnt == 1);

    hres = to_double(arg, &d);

    return return_bool(res, SUCCEEDED(hres));
}
