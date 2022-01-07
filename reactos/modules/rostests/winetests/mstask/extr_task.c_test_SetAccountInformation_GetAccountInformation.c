
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char const* LPWSTR ;
typedef int HRESULT ;
typedef int BOOL ;


 int CoTaskMemFree (char const*) ;
 int ERROR_FILE_NOT_FOUND ;
 int HRESULT_FROM_WIN32 (int ) ;
 int ITask_GetAccountInformation (int ,char const**) ;
 int ITask_SetAccountInformation (int ,char const*,char const*) ;
 int SCHED_E_CANNOT_OPEN_TASK ;
 int SCHED_E_NO_SECURITY_SERVICES ;
 int SCHED_E_SERVICE_NOT_RUNNING ;
 int S_OK ;
 scalar_t__ broken (int) ;
 int cleanup_task () ;
 char const* empty ;
 int lstrcmpW (char const*,char const*) ;
 int ok (int,char*,...) ;
 int setup_task () ;
 int skip (char*) ;
 int test_task ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_SetAccountInformation_GetAccountInformation(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR account_name;
    const WCHAR dummy_account_name[] = {'N', 'o', 'S', 'u', 'c', 'h',
            'A', 'c', 'c', 'o', 'u', 'n', 't', 0};
    const WCHAR dummy_account_name_b[] = {'N', 'o', 'S', 'u', 'c', 'h',
            'A', 'c', 'c', 'o', 'u', 'n', 't', 'B', 0};

    setup = setup_task();
    ok(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        skip("Failed to create task.  Skipping tests.\n");
        return;
    }


    hres = ITask_GetAccountInformation(test_task, &account_name);



    if (hres == SCHED_E_NO_SECURITY_SERVICES || hres == SCHED_E_SERVICE_NOT_RUNNING)
    {
        win_skip("Security services are not supported\n");
        cleanup_task();
        return;
    }
    ok(hres == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
            hres == SCHED_E_CANNOT_OPEN_TASK,
            "Unset account name generated: 0x%08x\n", hres);



    hres = ITask_SetAccountInformation(test_task, dummy_account_name, ((void*)0));
    ok(hres == S_OK,
            "Failed setting dummy account with no password: %08x\n", hres);
    hres = ITask_GetAccountInformation(test_task, &account_name);
    ok(hres == S_OK ||
       broken(hres == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
              hres == SCHED_E_CANNOT_OPEN_TASK ||
              hres == 0x200),
       "GetAccountInformation failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(account_name, dummy_account_name),
                "Got %s, expected %s\n", wine_dbgstr_w(account_name),
                wine_dbgstr_w(dummy_account_name));
        CoTaskMemFree(account_name);
    }



    hres = ITask_SetAccountInformation(test_task, dummy_account_name_b,
            dummy_account_name_b);
    ok(hres == S_OK,
            "Failed setting dummy account with password: %08x\n", hres);
    hres = ITask_GetAccountInformation(test_task, &account_name);
    ok(hres == S_OK ||
       broken(hres == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
              hres == SCHED_E_CANNOT_OPEN_TASK ||
              hres == 0x200),
       "GetAccountInformation failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(account_name, dummy_account_name_b),
                "Got %s, expected %s\n", wine_dbgstr_w(account_name),
                wine_dbgstr_w(dummy_account_name_b));
        CoTaskMemFree(account_name);
    }


    hres = ITask_SetAccountInformation(test_task, empty, ((void*)0));
    ok(hres == S_OK, "Failed setting system account: %08x\n", hres);
    hres = ITask_GetAccountInformation(test_task, &account_name);
    ok(hres == S_OK ||
       broken(hres == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
              hres == SCHED_E_CANNOT_OPEN_TASK ||
              hres == 0x200),
       "GetAccountInformation failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(account_name, empty),
                "Got %s, expected empty string\n", wine_dbgstr_w(account_name));
        CoTaskMemFree(account_name);
    }

    cleanup_task();
    return;
}
