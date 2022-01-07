
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUnknown ;
typedef int ITask ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_CTaskScheduler ;
 scalar_t__ COR_E_FILENOTFOUND ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_ITask ;
 int IID_ITaskScheduler ;
 scalar_t__ ITaskScheduler_Activate (int ,char const*,int *,int **) ;
 int ITaskScheduler_Release (int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;
 int test_task_scheduler ;

__attribute__((used)) static void test_Activate(void)
{
    HRESULT hres;
    ITask *task = ((void*)0);
    const WCHAR not_task_name[] =
            {'N', 'o', 'S', 'u', 'c', 'h', 'T', 'a', 's', 'k', 0};


    hres = CoCreateInstance(&CLSID_CTaskScheduler, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    ok(hres == S_OK, "CTaskScheduler CoCreateInstance failed: %08x\n", hres);
    if (hres != S_OK)
    {
        skip("Failed to create task scheduler.  Skipping tests.\n");
        return;
    }


    hres = ITaskScheduler_Activate(test_task_scheduler, not_task_name,
            &IID_ITask, (IUnknown**)&task);
    ok(hres == COR_E_FILENOTFOUND, "Expected COR_E_FILENOTFOUND: %08x\n", hres);

    ITaskScheduler_Release(test_task_scheduler);
    return;
}
