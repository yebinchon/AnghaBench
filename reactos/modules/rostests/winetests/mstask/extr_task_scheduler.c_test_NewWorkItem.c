
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUnknown ;
typedef int ITask ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 scalar_t__ CLASS_E_CLASSNOTAVAILABLE ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_CTask ;
 int CLSID_CTaskScheduler ;
 int CoCreateGuid (int *) ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ E_NOINTERFACE ;
 int IID_ITask ;
 int IID_ITaskScheduler ;
 scalar_t__ ITaskScheduler_NewWorkItem (int ,char const*,int *,int *,int **) ;
 int ITaskScheduler_Release (int ) ;
 int ITask_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;
 int test_task_scheduler ;

__attribute__((used)) static void test_NewWorkItem(void)
{
    HRESULT hres;
    ITask *task;
    const WCHAR task_name[] = {'T', 'e', 's', 't', 'i', 'n', 'g', 0};
    GUID GUID_BAD;


    CoCreateGuid(&GUID_BAD);


    hres = CoCreateInstance(&CLSID_CTaskScheduler, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    ok(hres == S_OK, "CTaskScheduler CoCreateInstance failed: %08x\n", hres);
    if (hres != S_OK)
    {
        skip("Failed to create task scheduler.  Skipping tests.\n");
        return;
    }


    hres = ITaskScheduler_NewWorkItem(test_task_scheduler, task_name,
            &CLSID_CTask, &IID_ITask, (IUnknown**)&task);
    ok(hres == S_OK, "NewNetworkItem failed: %08x\n", hres);
    if (hres == S_OK)
        ITask_Release(task);


    hres = ITaskScheduler_NewWorkItem(test_task_scheduler, task_name,
            &GUID_BAD, &IID_ITask, (IUnknown**)&task);
    ok(hres == CLASS_E_CLASSNOTAVAILABLE,
            "Expected CLASS_E_CLASSNOTAVAILABLE: %08x\n", hres);


    hres = ITaskScheduler_NewWorkItem(test_task_scheduler, task_name,
            &CLSID_CTask, &GUID_BAD, (IUnknown**)&task);
    ok(hres == E_NOINTERFACE, "Expected E_NOINTERFACE: %08x\n", hres);


    hres = ITaskScheduler_NewWorkItem(test_task_scheduler, task_name,
            &GUID_BAD, &GUID_BAD, (IUnknown**)&task);
    ok(hres == CLASS_E_CLASSNOTAVAILABLE,
            "Expected CLASS_E_CLASSNOTAVAILABLE: %08x\n", hres);

    ITaskScheduler_Release(test_task_scheduler);
    return;
}
