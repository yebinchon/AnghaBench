
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int INFINITE ;
 int ITask_GetMaxRunTime (int ,int*) ;
 int ITask_SetMaxRunTime (int ,int) ;
 int S_OK ;
 int cleanup_task () ;
 int ok (int,char*,...) ;
 int setup_task () ;
 int skip (char*) ;
 int test_task ;

__attribute__((used)) static void test_SetMaxRunTime_GetMaxRunTime(void)
{
    BOOL setup;
    HRESULT hres;
    DWORD max_run_time;

    setup = setup_task();
    ok(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        skip("Failed to create task.  Skipping tests.\n");
        return;
    }



    max_run_time = 0;
    hres = ITask_GetMaxRunTime(test_task, &max_run_time);
    ok(hres == S_OK, "Failed to get max runtime: 0x%08x\n", hres);
    ok(max_run_time == 259200000, "Expected 259200000: %d\n", max_run_time);


    max_run_time = 0;
    hres = ITask_SetMaxRunTime(test_task, 1234);
    ok(hres == S_OK, "Failed to set max runtime: 0x%08x\n", hres);
    hres = ITask_GetMaxRunTime(test_task, &max_run_time);
    ok(hres == S_OK, "Failed to get max runtime: 0x%08x\n", hres);
    ok(max_run_time == 1234, "Expected 1234: %d\n", max_run_time);


    max_run_time = 1;
    hres = ITask_SetMaxRunTime(test_task, 0);
    ok(hres == S_OK, "Failed to set max runtime: 0x%08x\n", hres);
    hres = ITask_GetMaxRunTime(test_task, &max_run_time);
    ok(hres == S_OK, "Failed to get max runtime: 0x%08x\n", hres);
    ok(max_run_time == 0, "Expected 0: %d\n", max_run_time);


    max_run_time = 0;
    hres = ITask_SetMaxRunTime(test_task, 1);
    ok(hres == S_OK, "Failed to set max runtime: 0x%08x\n", hres);
    hres = ITask_GetMaxRunTime(test_task, &max_run_time);
    ok(hres == S_OK, "Failed to get max runtime: 0x%08x\n", hres);
    ok(max_run_time == 1, "Expected 1: %d\n", max_run_time);


    max_run_time = 0;
    hres = ITask_SetMaxRunTime(test_task, INFINITE);
    ok(hres == S_OK, "Failed to set max runtime: 0x%08x\n", hres);
    hres = ITask_GetMaxRunTime(test_task, &max_run_time);
    ok(hres == S_OK, "Failed to get max runtime: 0x%08x\n", hres);
    ok(max_run_time == INFINITE, "Expected INFINITE: %d\n", max_run_time);

    cleanup_task();
    return;
}
