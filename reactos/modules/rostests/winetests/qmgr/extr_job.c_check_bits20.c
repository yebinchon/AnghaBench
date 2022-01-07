
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBackgroundCopyManager ;
typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int FALSE ;
 int IBackgroundCopyJob_Cancel (int *) ;
 scalar_t__ IBackgroundCopyJob_QueryInterface (int *,int *,void**) ;
 int IBackgroundCopyJob_Release (int *) ;
 scalar_t__ IBackgroundCopyManager_CreateJob (int *,int ,int ,int *,int **) ;
 int IBackgroundCopyManager_Release (int *) ;
 int IID_IBackgroundCopyJob3 ;
 int IID_IBackgroundCopyManager ;
 scalar_t__ S_OK ;
 int TRUE ;
 int test_displayName ;
 int test_jobId ;
 int test_type ;

__attribute__((used)) static BOOL check_bits20(void)
{
    HRESULT hres;
    IBackgroundCopyManager *manager;
    IBackgroundCopyJob *job, *job3;

    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0),
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **)&manager);
    if (hres != S_OK) return FALSE;

    hres = IBackgroundCopyManager_CreateJob(manager, test_displayName, test_type, &test_jobId, &job);
    if (hres != S_OK)
    {
        IBackgroundCopyManager_Release(manager);
        return FALSE;
    }

    hres = IBackgroundCopyJob_QueryInterface(job, &IID_IBackgroundCopyJob3, (void **)&job3);
    IBackgroundCopyJob_Cancel(job);
    IBackgroundCopyJob_Release(job);
    if (hres != S_OK)
    {
        IBackgroundCopyManager_Release(manager);
        return FALSE;
    }

    IBackgroundCopyJob_Release(job3);
    IBackgroundCopyManager_Release(manager);
    return TRUE;
}
