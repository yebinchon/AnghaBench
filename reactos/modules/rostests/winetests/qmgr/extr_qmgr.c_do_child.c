
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IBackgroundCopyManager ;
typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int BG_JOB_TYPE_DOWNLOAD ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 int CP_ACP ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IBackgroundCopyJob_Release (int *) ;
 scalar_t__ IBackgroundCopyManager_CreateJob (int *,int *,int ,int *,int **) ;
 int IBackgroundCopyManager_Release (int *) ;
 int IID_IBackgroundCopyManager ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void do_child(const char *secretA)
{
    WCHAR secretW[MAX_PATH];
    IBackgroundCopyManager *manager = ((void*)0);
    GUID id;
    IBackgroundCopyJob *job;
    HRESULT hres;
    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0),
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &manager);
    ok(hres == S_OK, "got 0x%08x\n", hres);

    MultiByteToWideChar(CP_ACP, 0, secretA, -1, secretW, MAX_PATH);
    hres = IBackgroundCopyManager_CreateJob(manager, secretW,
                                            BG_JOB_TYPE_DOWNLOAD, &id, &job);
    ok(hres == S_OK, "CreateJob in child process\n");
    IBackgroundCopyJob_Release(job);
    IBackgroundCopyManager_Release(manager);
}
