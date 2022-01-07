
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_CTaskScheduler ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoTaskMemFree (char*) ;
 scalar_t__ E_INVALIDARG ;
 int IID_ITaskScheduler ;
 scalar_t__ ITaskScheduler_GetTargetComputer (int ,char**) ;
 int ITaskScheduler_Release (int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__,...) ;
 int skip (char*) ;
 int test_task_scheduler ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_GetTargetComputer(void)
{
    HRESULT hres;
    WCHAR *oldname;


    hres = CoCreateInstance(&CLSID_CTaskScheduler, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    ok(hres == S_OK, "CTaskScheduler CoCreateInstance failed: %08x\n", hres);
    if (hres != S_OK)
    {
        skip("Failed to create task scheduler.\n");
        return;
    }

    if (0)
    {

        hres = ITaskScheduler_GetTargetComputer(test_task_scheduler, ((void*)0));
        ok(hres == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hres);
    }

    hres = ITaskScheduler_GetTargetComputer(test_task_scheduler, &oldname);
    ok((hres == S_OK) && oldname && oldname[0] == '\\' && oldname[1] == '\\' && oldname[2],
        "got 0x%x and %s (expected S_OK and an unc name)\n", hres, wine_dbgstr_w(oldname));

    CoTaskMemFree(oldname);

    ITaskScheduler_Release(test_task_scheduler);
    return;
}
