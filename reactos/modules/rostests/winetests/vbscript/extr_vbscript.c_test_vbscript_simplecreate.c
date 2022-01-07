
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IActiveScript_Release (int *) ;
 scalar_t__ IActiveScript_SetScriptState (int *,int ) ;
 int SCRIPTSTATE_UNINITIALIZED ;
 scalar_t__ S_OK ;
 int * create_vbscript () ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_vbscript_simplecreate(void)
{
    IActiveScript *script;
    ULONG ref;
    HRESULT hres;

    script = create_vbscript();

    hres = IActiveScript_SetScriptState(script, SCRIPTSTATE_UNINITIALIZED);
    ok(hres == S_OK, "SetScriptState(SCRIPTSTATE_UNINITIALIZED) failed: %08x\n", hres);

    ref = IActiveScript_Release(script);
    ok(!ref, "ref = %d\n", ref);
}
