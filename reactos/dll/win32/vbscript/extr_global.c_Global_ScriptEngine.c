
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 int TRACE (char*,int ) ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_string (int *,int ) ;
 int vbscriptW ;

__attribute__((used)) static HRESULT Global_ScriptEngine(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    TRACE("%s\n", debugstr_variant(arg));

    assert(args_cnt == 0);

    return return_string(res, vbscriptW);
}
