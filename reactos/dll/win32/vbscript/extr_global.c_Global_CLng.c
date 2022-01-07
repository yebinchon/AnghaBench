
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 int DISP_E_BADVARTYPE ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int ) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_int (int *,int) ;
 int to_int (int *,int*) ;

__attribute__((used)) static HRESULT Global_CLng(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    int i;
    HRESULT hres;

    TRACE("%s\n", debugstr_variant(arg));

    assert(args_cnt == 1);

    hres = to_int(arg, &i);
    if(FAILED(hres))
        return hres;
    if(!res)
        return DISP_E_BADVARTYPE;

    return return_int(res, i);
}
