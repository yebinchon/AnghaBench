
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int VarAbs (int *,int *) ;
 int VariantClear (int *) ;
 int assert (int) ;
 int debugstr_variant (int *) ;

__attribute__((used)) static HRESULT Global_Abs(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;
    VARIANT dst;

    TRACE("(%s)\n", debugstr_variant(arg));

    assert(args_cnt == 1);

    hres = VarAbs(arg, &dst);
    if(FAILED(hres))
        return hres;

    if (res)
        *res = dst;
    else
        VariantClear(&dst);

    return S_OK;
}
