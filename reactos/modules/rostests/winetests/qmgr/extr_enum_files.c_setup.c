
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef int BOOL ;


 int BG_JOB_TYPE_DOWNLOAD ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int FALSE ;
 scalar_t__ IBackgroundCopyJob_EnumFiles (int ,int *) ;
 int IBackgroundCopyJob_Release (int ) ;
 scalar_t__ IBackgroundCopyManager_CreateJob (int ,int ,int ,int *,int *) ;
 int IBackgroundCopyManager_Release (int ) ;
 int IID_IBackgroundCopyManager ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ addFileHelper (int ,int ,int ) ;
 int test_displayName ;
 int test_enumFiles ;
 int test_job ;
 int test_localNameA ;
 int test_localNameB ;
 int test_manager ;
 int test_remoteNameA ;
 int test_remoteNameB ;

__attribute__((used)) static BOOL setup(void)
{
    HRESULT hres;
    GUID test_jobId;

    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0),
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &test_manager);
    if(hres != S_OK)
        return FALSE;

    hres = IBackgroundCopyManager_CreateJob(test_manager, test_displayName,
                                            BG_JOB_TYPE_DOWNLOAD, &test_jobId,
                                            &test_job);
    if(hres != S_OK)
    {
        IBackgroundCopyManager_Release(test_manager);
        return FALSE;
    }

    if (addFileHelper(test_job, test_localNameA, test_remoteNameA) != S_OK
        || addFileHelper(test_job, test_localNameB, test_remoteNameB) != S_OK
        || IBackgroundCopyJob_EnumFiles(test_job, &test_enumFiles) != S_OK)
    {
        IBackgroundCopyJob_Release(test_job);
        IBackgroundCopyManager_Release(test_manager);
        return FALSE;
    }

    return TRUE;
}
