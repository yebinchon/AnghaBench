
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,int ) ;
 int TRACE (char*,int ) ;
 int VT_TYPEMASK ;
 int V_VT (int *) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_short (int *,int) ;

__attribute__((used)) static HRESULT Global_VarType(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    TRACE("(%s)\n", debugstr_variant(arg));

    assert(args_cnt == 1);

    if(V_VT(arg) & ~VT_TYPEMASK) {
        FIXME("not supported %s\n", debugstr_variant(arg));
        return E_NOTIMPL;
    }

    return return_short(res, V_VT(arg));
}
