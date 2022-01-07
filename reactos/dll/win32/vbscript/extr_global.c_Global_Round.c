
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 int FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,int ) ;




 double V_R8 (int *) ;
 int V_VT (int *) ;
 int debugstr_variant (int *) ;
 int return_double (int *,int ) ;
 int round (double) ;
 int to_double (int *,double*) ;

__attribute__((used)) static HRESULT Global_Round(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    double n;
    HRESULT hres;

    TRACE("%s\n", debugstr_variant(arg));

    if(!res)
        return S_OK;

    switch(V_VT(arg)) {
    case 130:
    case 129:
    case 131:
        *res = *arg;
        return S_OK;
    case 128:
        n = V_R8(arg);
        break;
    default:
        hres = to_double(arg, &n);
        if(FAILED(hres))
            return hres;
    }

    return return_double(res, round(n));
}
