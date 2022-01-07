
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
typedef int UINT ;
struct TYPE_7__ {int uiCodePage; int wszProportionalFont; int wszFixedWidthFont; int wszDescription; int ScriptId; } ;
typedef TYPE_1__ SCRIPTINFO ;
typedef int IMultiLanguage2 ;
typedef int IEnumScript ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_FAIL ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IEnumScript_Next (int *,int,TYPE_1__*,int*) ;
 int IEnumScript_Release (int *) ;
 int IEnumScript_Reset (int *) ;
 int IEnumScript_Skip (int *,int) ;
 int IMultiLanguage2_EnumScripts (int *,int,int ,int **) ;
 int IMultiLanguage2_GetNumberOfScripts (int *,int*) ;
 int LANG_NEUTRAL ;
 int S_FALSE ;
 int S_OK ;
 int ok (int,char*,int,...) ;
 scalar_t__ pGetCPInfoExA ;
 int scriptinfo_cmp (TYPE_1__*,TYPE_1__*) ;
 int trace (char*,int,...) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_EnumScripts(IMultiLanguage2 *iML2, DWORD flags)
{
    IEnumScript *iEnumScript = ((void*)0);
    SCRIPTINFO *sinfo;
    SCRIPTINFO sinfo2;
    HRESULT ret;
    ULONG i, n;
    UINT total;

    total = 0;
    ret = IMultiLanguage2_GetNumberOfScripts(iML2, &total);
    ok(ret == S_OK && total != 0, "IMultiLanguage2_GetNumberOfScripts: expected S_OK/!0, got %08x/%u\n", ret, total);

    trace("total mlang supported scripts %u\n", total);

    ret = IMultiLanguage2_EnumScripts(iML2, flags, LANG_NEUTRAL, &iEnumScript);
    ok(ret == S_OK && iEnumScript, "IMultiLanguage2_EnumScripts: expected S_OK/!NULL, got %08x/%p\n", ret, iEnumScript);

    ret = IEnumScript_Reset(iEnumScript);
    ok(ret == S_OK, "IEnumScript_Reset: expected S_OK, got %08x\n", ret);
    n = 65536;
    ret = IEnumScript_Next(iEnumScript, 0, ((void*)0), &n);
    ok(n == 65536 && ret == E_FAIL, "IEnumScript_Next: expected 65536/E_FAIL, got %u/%08x\n", n, ret);
    ret = IEnumScript_Next(iEnumScript, 0, ((void*)0), ((void*)0));
    ok(ret == E_FAIL, "IEnumScript_Next: expected E_FAIL, got %08x\n", ret);

    sinfo = HeapAlloc(GetProcessHeap(), 0, sizeof(*sinfo) * total * 2);

    n = total * 2;
    ret = IEnumScript_Next(iEnumScript, 0, sinfo, &n);
    ok(ret == S_FALSE && n == 0, "IEnumScript_Next: expected S_FALSE/0, got %08x/%u\n", ret, n);

    n = total * 2;
    ret = IEnumScript_Next(iEnumScript, n, sinfo, &n);
    ok(ret == S_OK && n != 0, "IEnumScript_Next: expected S_OK, got %08x/%u\n", ret, n);

    trace("flags %08x, enumerated scripts %u\n", flags, n);

    if (!flags)
    {
 ok(n == total, "IEnumScript_Next: expected %u, got %u\n", total, n);
    }

    total = n;

    for (i = 0; pGetCPInfoExA && i < n; i++)
    {
    }


    n = 1;
    ret = IEnumScript_Next(iEnumScript, 1, &sinfo2, &n);
    ok(ret == S_FALSE && n == 0, "IEnumScript_Next: expected S_FALSE/0, got %08x/%u\n", ret, n);

    ret = IEnumScript_Reset(iEnumScript);
    ok(ret == S_OK, "IEnumScript_Reset: expected S_OK, got %08x\n", ret);
    n = 0;
    ret = IEnumScript_Next(iEnumScript, 1, &sinfo2, &n);
    ok(n == 1 && ret == S_OK, "IEnumScript_Next: expected 1/S_OK, got %u/%08x\n", n, ret);
    scriptinfo_cmp(sinfo, &sinfo2);

    if (0)
    {



    ret = IEnumScript_Skip(iEnumScript, 1);
    ok(ret == S_OK, "IEnumScript_Skip: expected S_OK, got %08x\n", ret);
    }
    for (i = 0; i < total - 1; i++)
    {
        n = 0;
        ret = IEnumScript_Next(iEnumScript, 1, &sinfo2, &n);
        ok(n == 1 && ret == S_OK, "IEnumScript_Next: expected 1/S_OK, got %u/%08x\n", n, ret);
        scriptinfo_cmp(&sinfo[i + 1], &sinfo2);
    }

    HeapFree(GetProcessHeap(), 0, sinfo);
    IEnumScript_Release(iEnumScript);
}
