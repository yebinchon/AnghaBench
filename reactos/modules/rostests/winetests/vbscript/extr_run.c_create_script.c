
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_VBScript ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 int IID_IActiveScript ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IActiveScript *create_script(void)
{
    IActiveScript *script;
    HRESULT hres;

    hres = CoCreateInstance(&CLSID_VBScript, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScript, (void**)&script);
    ok(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);

    return script;
}
