
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int VarMonthName (int,int,int ,int *) ;
 int assert (int) ;
 int return_bstr (int *,int ) ;
 int to_int (int *,int*) ;

__attribute__((used)) static HRESULT Global_MonthName(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    int month, abbrev = 0;
    BSTR ret;
    HRESULT hres;

    TRACE("\n");

    assert(args_cnt == 1 || args_cnt == 2);

    hres = to_int(args, &month);
    if(FAILED(hres))
        return hres;

    if(args_cnt == 2) {
        hres = to_int(args+1, &abbrev);
        if(FAILED(hres))
            return hres;
    }

    hres = VarMonthName(month, abbrev, 0, &ret);
    if(FAILED(hres))
        return hres;

    return return_bstr(res, ret);
}
