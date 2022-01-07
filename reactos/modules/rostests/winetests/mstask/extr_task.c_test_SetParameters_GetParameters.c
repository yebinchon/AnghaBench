
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float WCHAR ;
typedef float const* LPWSTR ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CoTaskMemFree (float const*) ;
 scalar_t__ ITask_GetParameters (int ,float const**) ;
 scalar_t__ ITask_SetParameters (int ,float const*) ;
 scalar_t__ S_OK ;
 int cleanup_task () ;
 float const* empty ;
 int lstrcmpW (float const*,float const*) ;
 int ok (int,char*,...) ;
 int setup_task () ;
 int skip (char*) ;
 int test_task ;
 scalar_t__ wine_dbgstr_w (float const*) ;

__attribute__((used)) static void test_SetParameters_GetParameters(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR parameters;
    const WCHAR parameters_a[] = {'f','o','o','.','t','x','t', 0};
    const WCHAR parameters_b[] = {'f','o','o','.','t','x','t',' ',
        'b','a','r','.','t','x','t', 0};

    setup = setup_task();
    ok(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        skip("Failed to create task.  Skipping tests.\n");
        return;
    }


    hres = ITask_GetParameters(test_task, &parameters);
    ok(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(parameters, empty),
                "Got %s, expected empty string\n", wine_dbgstr_w(parameters));
        CoTaskMemFree(parameters);
    }


    hres = ITask_SetParameters(test_task, parameters_a);
    ok(hres == S_OK, "Failed setting parameters %s: %08x\n",
            wine_dbgstr_w(parameters_a), hres);
    hres = ITask_GetParameters(test_task, &parameters);
    ok(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(parameters, parameters_a), "Got %s, expected %s\n",
                wine_dbgstr_w(parameters), wine_dbgstr_w(parameters_a));
        CoTaskMemFree(parameters);
    }


    hres = ITask_SetParameters(test_task, parameters_b);
    ok(hres == S_OK, "Failed setting parameters %s: %08x\n",
            wine_dbgstr_w(parameters_b), hres);
    hres = ITask_GetParameters(test_task, &parameters);
    ok(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(parameters, parameters_b), "Got %s, expected %s\n",
                wine_dbgstr_w(parameters), wine_dbgstr_w(parameters_b));
        CoTaskMemFree(parameters);
    }


    hres = ITask_SetParameters(test_task, empty);
    ok(hres == S_OK, "Failed setting parameters %s: %08x\n",
            wine_dbgstr_w(empty), hres);
    hres = ITask_GetParameters(test_task, &parameters);
    ok(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(parameters, empty),
                "Got %s, expected empty string\n", wine_dbgstr_w(parameters));
        CoTaskMemFree(parameters);
    }

    cleanup_task();
    return;
}
