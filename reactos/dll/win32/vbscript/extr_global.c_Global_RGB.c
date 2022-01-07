
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int MAKE_VBSERROR (int ) ;
 int RGB (int,int,int) ;
 int TRACE (char*,int ,int ,int ) ;
 int VBSE_ILLEGAL_FUNC_CALL ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_int (int *,int ) ;
 int to_int (int *,int*) ;

__attribute__((used)) static HRESULT Global_RGB(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;
    int i, color[3];

    TRACE("%s %s %s\n", debugstr_variant(arg), debugstr_variant(arg + 1), debugstr_variant(arg + 2));

    assert(args_cnt == 3);

    for(i = 0; i < 3; i++) {
        hres = to_int(arg + i, color + i);
        if(FAILED(hres))
            return hres;
        if(color[i] > 255)
            color[i] = 255;
        if(color[i] < 0)
            return MAKE_VBSERROR(VBSE_ILLEGAL_FUNC_CALL);
    }

    return return_int(res, RGB(color[0], color[1], color[2]));
}
