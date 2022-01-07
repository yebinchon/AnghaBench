
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int ITaskTrigger ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int ITaskTrigger_Release (int *) ;
 scalar_t__ ITask_CreateTrigger (int ,int *,int **) ;
 scalar_t__ S_OK ;
 int cleanup_task () ;
 int ok (int,char*,...) ;
 int setup_task () ;
 int skip (char*) ;
 int test_task ;

__attribute__((used)) static void test_CreateTrigger(void)
{
    BOOL setup;
    HRESULT hres;
    WORD trigger_index;
    ITaskTrigger *test_trigger;

    setup = setup_task();
    ok(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        skip("Failed to create task.  Skipping tests.\n");
        return;
    }

    hres = ITask_CreateTrigger(test_task, &trigger_index, &test_trigger);
    ok(hres == S_OK, "Failed to create trigger: 0x%08x\n", hres);
    if (hres != S_OK)
    {
        cleanup_task();
        return;
    }

    ITaskTrigger_Release(test_trigger);
    cleanup_task();
    return;
}
