
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITaskScheduler ;
typedef int IEnumWorkItems ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_CTaskScheduler ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ E_INVALIDARG ;
 int IEnumWorkItems_Release (int *) ;
 int IID_ITaskScheduler ;
 scalar_t__ ITaskScheduler_Enum (int *,int **) ;
 int ITaskScheduler_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_Enum(void)
{
    ITaskScheduler *scheduler;
    IEnumWorkItems *tasks;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_CTaskScheduler, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **)&scheduler);
    ok(hr == S_OK, "got 0x%08x\n", hr);

if (0) {
    hr = ITaskScheduler_Enum(scheduler, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
}

    hr = ITaskScheduler_Enum(scheduler, &tasks);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    IEnumWorkItems_Release(tasks);

    ITaskScheduler_Release(scheduler);
}
