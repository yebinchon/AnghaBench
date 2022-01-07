
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char const* LPWSTR ;
typedef char const* LPCWSTR ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CoTaskMemFree (char const*) ;
 scalar_t__ ITask_GetApplicationName (int ,char const**) ;
 scalar_t__ ITask_SetApplicationName (int ,char const*) ;
 scalar_t__ S_OK ;
 int cleanup_task () ;
 char const* empty ;
 scalar_t__ lstrcmpiW (char const*,char const*) ;
 int ok (int,char*,...) ;
 char* path_resolve_name (char const*) ;
 int setup_task () ;
 int skip (char*) ;
 int test_task ;
 scalar_t__ wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_SetApplicationName_GetApplicationName(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR stored_name;
    LPCWSTR full_name;
    const WCHAR non_application_name[] = {'N','o','S','u','c','h',
            'A','p','p','l','i','c','a','t','i','o','n', 0};
    const WCHAR notepad_exe[] = {
            'n','o','t','e','p','a','d','.','e','x','e', 0};
    const WCHAR notepad[] = {'n','o','t','e','p','a','d', 0};

    setup = setup_task();
    ok(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        skip("Failed to create task.  Skipping tests.\n");
        return;
    }


    hres = ITask_GetApplicationName(test_task, &stored_name);
    ok(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpiW(stored_name, empty),
                "Got %s, expected empty string\n", wine_dbgstr_w(stored_name));
        CoTaskMemFree(stored_name);
    }



    hres = ITask_SetApplicationName(test_task, non_application_name);
    ok(hres == S_OK, "Failed setting name %s: %08x\n",
            wine_dbgstr_w(non_application_name), hres);
    hres = ITask_GetApplicationName(test_task, &stored_name);
    ok(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = path_resolve_name(non_application_name);
        ok(!lstrcmpiW(stored_name, full_name), "Got %s, expected %s\n",
                wine_dbgstr_w(stored_name), wine_dbgstr_w(full_name));
        CoTaskMemFree(stored_name);
    }



    hres = ITask_SetApplicationName(test_task, notepad_exe);
    ok(hres == S_OK, "Failed setting name %s: %08x\n",
            wine_dbgstr_w(notepad_exe), hres);
    hres = ITask_GetApplicationName(test_task, &stored_name);
    ok(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = path_resolve_name(notepad_exe);
        ok(!lstrcmpiW(stored_name, full_name), "Got %s, expected %s\n",
                wine_dbgstr_w(stored_name), wine_dbgstr_w(full_name));
        CoTaskMemFree(stored_name);
    }



    hres = ITask_SetApplicationName(test_task, notepad);
    ok(hres == S_OK, "Failed setting name %s: %08x\n", wine_dbgstr_w(notepad), hres);
    hres = ITask_GetApplicationName(test_task, &stored_name);
    ok(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = path_resolve_name(notepad_exe);
        if (lstrcmpiW(stored_name, full_name) != 0)
        {
            full_name = path_resolve_name(notepad);
            ok(!lstrcmpiW(stored_name, full_name), "Got %s, expected %s\n",
               wine_dbgstr_w(stored_name), wine_dbgstr_w(full_name));
        }
        CoTaskMemFree(stored_name);
    }




    hres = ITask_SetApplicationName(test_task, non_application_name);
    ok(hres == S_OK, "Failed setting name %s: %08x\n",
            wine_dbgstr_w(non_application_name), hres);
    hres = ITask_GetApplicationName(test_task, &stored_name);
    ok(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = path_resolve_name(non_application_name);
        ok(!lstrcmpiW(stored_name, full_name), "Got %s, expected %s\n",
                wine_dbgstr_w(stored_name), wine_dbgstr_w(full_name));
        CoTaskMemFree(stored_name);
    }


    hres = ITask_SetApplicationName(test_task, empty);
    ok(hres == S_OK, "Failed setting name %s: %08x\n", wine_dbgstr_w(empty), hres);
    hres = ITask_GetApplicationName(test_task, &stored_name);
    ok(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpiW(stored_name, empty),
                "Got %s, expected empty string\n", wine_dbgstr_w(stored_name));
        CoTaskMemFree(stored_name);
    }

    cleanup_task();
    return;
}
