
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ winver; int dll; int (* unhook ) (int *) ;int second; int post; int pre; int reason; int name; scalar_t__ (* hook ) (int *) ;} ;
typedef int * HMODULE ;
typedef scalar_t__ BOOL ;


 int FreeLibrary (int *) ;
 int * GetModuleHandleW (int ) ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int LoadShimDLL (int ,int **,int **) ;
 scalar_t__ _WIN32_WINNT_WS03 ;
 scalar_t__ g_Version ;
 scalar_t__ get_module_version (int *) ;
 int ok (int ,char*,...) ;
 int * pGetHookAPIs ;
 void* pNotifyShims ;
 int skip (char*,int ,int ,int *,void*) ;
 scalar_t__ stub1 (int *) ;
 int stub2 (int *) ;
 int test_one (int ,int ,int ,int ,int ) ;
 TYPE_1__* tests ;
 int trace (char*,int ) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void run_test(size_t n, BOOL unload)
{
    BOOL ret;
    HMODULE dll;

    if (!LoadShimDLL(tests[n].dll, &dll, &pGetHookAPIs))
        pGetHookAPIs = ((void*)0);
    pNotifyShims = (void*)GetProcAddress(dll, "NotifyShims");

    if (!pGetHookAPIs || !pNotifyShims)
    {
        skip("%s not loaded, or does not export GetHookAPIs or pNotifyShims (%s, %p, %p)\n",
             wine_dbgstr_w(tests[n].dll), tests[n].name, pGetHookAPIs, pNotifyShims);
        return;
    }

    g_Version = get_module_version(dll);

    if (!g_Version)
    {
        g_Version = _WIN32_WINNT_WS03;
        trace("Module %s has no version, faking 2k3\n", wine_dbgstr_w(tests[n].dll));
    }

    if (g_Version >= tests[n].winver)
    {
        ret = tests[n].hook(dll);
        if (ret)
        {
            test_one(tests[n].name, tests[n].reason, tests[n].pre, tests[n].post, tests[n].second);
            tests[n].unhook(dll);
        }
        else
        {
            ok(0, "Unable to redirect functions!\n");
        }
    }
    FreeLibrary(dll);
    if (unload)
    {
        dll = GetModuleHandleW(tests[n].dll);
        ok(dll == ((void*)0), "Unable to unload %s\n", wine_dbgstr_w(tests[n].dll));
    }
}
