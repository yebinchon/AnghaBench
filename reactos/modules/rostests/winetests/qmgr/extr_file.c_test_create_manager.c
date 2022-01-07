
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBackgroundCopyManager ;
typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int BG_JOB_TYPE_DOWNLOAD ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int ERROR_SERVICE_DISABLED ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int IBackgroundCopyJob_Release (int *) ;
 scalar_t__ IBackgroundCopyManager_CreateJob (int *,int ,int ,int *,int **) ;
 int IBackgroundCopyManager_Release (int *) ;
 int IID_IBackgroundCopyManager ;
 scalar_t__ S_OK ;
 scalar_t__ addFileHelper (int *,int ,int ) ;
 int test_displayName ;
 int test_localName ;
 int test_remoteName ;
 int win_skip (char*) ;

__attribute__((used)) static HRESULT test_create_manager(void)
{
    HRESULT hres;
    IBackgroundCopyManager *manager = ((void*)0);


    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0), CLSCTX_LOCAL_SERVER,
                            &IID_IBackgroundCopyManager, (void **) &manager);

    if(hres == HRESULT_FROM_WIN32(ERROR_SERVICE_DISABLED)) {
        win_skip("Needed Service is disabled\n");
        return hres;
    }

    if (hres == S_OK)
    {
        IBackgroundCopyJob *job;
        GUID jobId;

        hres = IBackgroundCopyManager_CreateJob(manager, test_displayName, BG_JOB_TYPE_DOWNLOAD, &jobId, &job);
        if (hres == S_OK)
        {
            hres = addFileHelper(job, test_localName, test_remoteName);
            if (hres != S_OK)
                win_skip("AddFile() with file:// protocol failed. Tests will be skipped.\n");
            IBackgroundCopyJob_Release(job);
        }
        IBackgroundCopyManager_Release(manager);
    }

    return hres;
}
