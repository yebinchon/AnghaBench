
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_CTaskScheduler ;
 int CharLowerW (char*) ;
 int CharUpperW (char*) ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoTaskMemFree (char*) ;
 int ERROR_BAD_NETPATH ;
 scalar_t__ E_ACCESSDENIED ;
 int GetComputerNameW (char*,int*) ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int IID_ITaskScheduler ;
 scalar_t__ ITaskScheduler_GetTargetComputer (int ,char**) ;
 int ITaskScheduler_Release (int ) ;
 scalar_t__ ITaskScheduler_SetTargetComputer (int ,char*) ;
 int MAX_COMPUTERNAME_LENGTH ;
 scalar_t__ S_OK ;
 char* does_not_existW ;
 int lstrcmpiW (char*,char*) ;
 int ok (int,char*,scalar_t__,...) ;
 int skip (char*) ;
 int test_task_scheduler ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_SetTargetComputer(void)
{
    WCHAR buffer[MAX_COMPUTERNAME_LENGTH + 3];
    DWORD len = MAX_COMPUTERNAME_LENGTH + 1;
    WCHAR *oldname = ((void*)0);
    WCHAR *name = ((void*)0);
    HRESULT hres;


    buffer[0] = '\\';
    buffer[1] = '\\';
    if (!GetComputerNameW(buffer + 2, &len))
        return;


    hres = CoCreateInstance(&CLSID_CTaskScheduler, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    ok(hres == S_OK, "CTaskScheduler CoCreateInstance failed: %08x\n", hres);
    if (hres != S_OK)
    {
        skip("Failed to create task scheduler.  Skipping tests.\n");
        return;
    }

    hres = ITaskScheduler_GetTargetComputer(test_task_scheduler, &oldname);
    ok(hres == S_OK, "got 0x%x and %s (expected S_OK)\n", hres, wine_dbgstr_w(oldname));


    hres = ITaskScheduler_SetTargetComputer(test_task_scheduler, ((void*)0));
    ok(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);
    hres = ITaskScheduler_GetTargetComputer(test_task_scheduler, &name);
    ok((hres == S_OK && !lstrcmpiW(name, buffer)),
        "got 0x%x with %s (expected S_OK and %s)\n",
        hres, wine_dbgstr_w(name), wine_dbgstr_w(buffer));
    CoTaskMemFree(name);


    hres = ITaskScheduler_SetTargetComputer(test_task_scheduler, does_not_existW);
    ok(hres == HRESULT_FROM_WIN32(ERROR_BAD_NETPATH), "got 0x%x (expected 0x80070035)\n", hres);

    hres = ITaskScheduler_GetTargetComputer(test_task_scheduler, &name);
    ok((hres == S_OK && !lstrcmpiW(name, buffer)),
        "got 0x%x with %s (expected S_OK and %s)\n",
        hres, wine_dbgstr_w(name), wine_dbgstr_w(buffer));
    CoTaskMemFree(name);


    hres = ITaskScheduler_SetTargetComputer(test_task_scheduler, oldname + 2);
    if (hres == E_ACCESSDENIED)
    {
        skip("SetTargetComputer failed with E_ACCESSDENIED (needs admin rights)\n");
        goto done;
    }
    ok(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);


    CharUpperW(buffer);
    hres = ITaskScheduler_SetTargetComputer(test_task_scheduler, buffer);
    ok(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);
    CharLowerW(buffer);
    hres = ITaskScheduler_SetTargetComputer(test_task_scheduler, buffer);
    ok(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);


    hres = ITaskScheduler_SetTargetComputer(test_task_scheduler, oldname);
    ok(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);

done:
    CoTaskMemFree(oldname);
    ITaskScheduler_Release(test_task_scheduler);
    return;
}
