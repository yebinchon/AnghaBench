
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int BG_JOB_TYPE_DOWNLOAD ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int FALSE ;
 scalar_t__ IBackgroundCopyManager_CreateJob (int *,int ,int ,int *,int **) ;
 int IBackgroundCopyManager_Release (int *) ;
 int IID_IBackgroundCopyManager ;
 scalar_t__ S_OK ;
 int TRUE ;
 int memset (int *,int ,int) ;
 int test_displayName ;
 int * test_job ;
 int test_jobId ;
 int * test_manager ;
 int test_type ;

__attribute__((used)) static BOOL setup(void)
{
    HRESULT hres;

    test_manager = ((void*)0);
    test_job = ((void*)0);
    memset(&test_jobId, 0, sizeof test_jobId);
    test_type = BG_JOB_TYPE_DOWNLOAD;

    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0),
                            CLSCTX_LOCAL_SERVER,
                            &IID_IBackgroundCopyManager,
                            (void **) &test_manager);
    if(hres != S_OK)
        return FALSE;

    hres = IBackgroundCopyManager_CreateJob(test_manager, test_displayName,
                                            test_type, &test_jobId, &test_job);
    if(hres != S_OK)
    {
        IBackgroundCopyManager_Release(test_manager);
        return FALSE;
    }

    return TRUE;
}
