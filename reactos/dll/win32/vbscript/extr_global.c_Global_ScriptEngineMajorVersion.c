
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 int TRACE (char*,int ) ;
 int VBSCRIPT_MAJOR_VERSION ;
 int assert (int) ;
 int debugstr_variant (int *) ;
 int return_int (int *,int ) ;

__attribute__((used)) static HRESULT Global_ScriptEngineMajorVersion(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    TRACE("%s\n", debugstr_variant(arg));

    assert(args_cnt == 0);

    return return_int(res, VBSCRIPT_MAJOR_VERSION);
}
