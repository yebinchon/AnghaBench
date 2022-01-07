
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IActiveScript_Close (int *) ;
 scalar_t__ IActiveScript_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void close_script(IActiveScript *script)
{
    ULONG ref;
    HRESULT hres;

    hres = IActiveScript_Close(script);
    ok(hres == S_OK, "Close failed: %08x\n", hres);

    ref = IActiveScript_Release(script);
    ok(!ref, "ref=%u\n", ref);
}
