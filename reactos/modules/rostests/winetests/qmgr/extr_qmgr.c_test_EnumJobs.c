
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IEnumBackgroundCopyJobs ;
typedef int IBackgroundCopyManager ;
typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int BG_JOB_TYPE_DOWNLOAD ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IBackgroundCopyJob_Release (int *) ;
 scalar_t__ IBackgroundCopyManager_CreateJob (int *,char const*,int ,int *,int **) ;
 scalar_t__ IBackgroundCopyManager_EnumJobs (int *,int ,int **) ;
 int IBackgroundCopyManager_Release (int *) ;
 int IEnumBackgroundCopyJobs_Release (int *) ;
 int IID_IBackgroundCopyManager ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_EnumJobs(void)
{

    IEnumBackgroundCopyJobs* enumJobs;

    static const WCHAR copyNameW[] = {'T', 'e', 's', 't', 0};
    IBackgroundCopyManager *manager = ((void*)0);
    IBackgroundCopyJob *job = ((void*)0);
    HRESULT hres;
    GUID tmpId;


    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0),
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &manager);
    ok(hres == S_OK, "got 0x%08x\n", hres);

    hres = IBackgroundCopyManager_CreateJob(manager, copyNameW,
                                            BG_JOB_TYPE_DOWNLOAD, &tmpId,
                                            &job);
    ok(hres == S_OK, "got 0x%08x\n", hres);

    hres = IBackgroundCopyManager_EnumJobs(manager, 0, &enumJobs);
    ok(hres == S_OK, "EnumJobs failed: %08x\n", hres);
    IEnumBackgroundCopyJobs_Release(enumJobs);


    IBackgroundCopyJob_Release(job);
    IBackgroundCopyManager_Release(manager);
}
