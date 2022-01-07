
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_CTask ;
 int CLSID_CTaskScheduler ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int FALSE ;
 int IID_ITask ;
 int IID_ITaskScheduler ;
 scalar_t__ ITaskScheduler_NewWorkItem (int ,char const*,int *,int *,int **) ;
 int ITaskScheduler_Release (int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int test_task ;
 int test_task_scheduler ;

__attribute__((used)) static BOOL setup_task(void)
{
    HRESULT hres;
    const WCHAR task_name[] = {'T','e','s','t','i','n','g', 0};

    hres = CoCreateInstance(&CLSID_CTaskScheduler, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    if(hres != S_OK)
        return FALSE;
    hres = ITaskScheduler_NewWorkItem(test_task_scheduler, task_name, &CLSID_CTask,
            &IID_ITask, (IUnknown**)&test_task);
    if(hres != S_OK)
    {
        ITaskScheduler_Release(test_task_scheduler);
        return FALSE;
    }
    return TRUE;
}
