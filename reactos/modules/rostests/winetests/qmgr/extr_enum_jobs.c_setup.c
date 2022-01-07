
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
 scalar_t__ IBackgroundCopyManager_EnumJobs (int *,int ,int *) ;
 scalar_t__ IEnumBackgroundCopyJobs_GetCount (int ,int *) ;
 int IID_IBackgroundCopyManager ;
 scalar_t__ S_OK ;
 int TRUE ;
 int memset (int *,int ,int) ;
 int test_displayNameA ;
 int test_displayNameB ;
 int test_enumJobsA ;
 int test_enumJobsB ;
 int * test_jobA ;
 int * test_jobB ;
 int test_jobCountB ;
 int test_jobIdA ;
 int test_jobIdB ;
 int * test_manager ;

__attribute__((used)) static BOOL setup(void)
{
    HRESULT hres;

    test_manager = ((void*)0);
    test_jobA = ((void*)0);
    test_jobB = ((void*)0);
    memset(&test_jobIdA, 0, sizeof test_jobIdA);
    memset(&test_jobIdB, 0, sizeof test_jobIdB);

    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0),
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &test_manager);
    if(hres != S_OK)
        return FALSE;

    hres = IBackgroundCopyManager_CreateJob(test_manager, test_displayNameA,
                                            BG_JOB_TYPE_DOWNLOAD, &test_jobIdA,
                                            &test_jobA);
    if(hres != S_OK)
        return FALSE;

    hres = IBackgroundCopyManager_EnumJobs(test_manager, 0, &test_enumJobsA);
    if(hres != S_OK)
        return FALSE;

    hres = IBackgroundCopyManager_CreateJob(test_manager, test_displayNameB,
                                            BG_JOB_TYPE_DOWNLOAD, &test_jobIdB,
                                            &test_jobB);
    if(hres != S_OK)
        return FALSE;

    hres = IBackgroundCopyManager_EnumJobs(test_manager, 0, &test_enumJobsB);
    if(hres != S_OK)
        return FALSE;

    hres = IEnumBackgroundCopyJobs_GetCount(test_enumJobsB, &test_jobCountB);
    if (hres != S_OK)
        return FALSE;

    return TRUE;
}
