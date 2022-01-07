
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ ULONG ;
typedef int LPWSTR ;
typedef int IEnumBackgroundCopyJobs ;
typedef int IBackgroundCopyManager ;
typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoTaskMemFree (int ) ;
 int FALSE ;
 int GetTickCount () ;
 int IBackgroundCopyJob_GetDisplayName (int *,int *) ;
 int IBackgroundCopyJob_Release (int *) ;
 scalar_t__ IBackgroundCopyManager_EnumJobs (int *,int ,int **) ;
 int IBackgroundCopyManager_Release (int *) ;
 scalar_t__ IEnumBackgroundCopyJobs_GetCount (int *,scalar_t__*) ;
 int IEnumBackgroundCopyJobs_Next (int *,int,int **,int *) ;
 int IEnumBackgroundCopyJobs_Release (int *) ;
 int IID_IBackgroundCopyManager ;
 int MAX_PATH ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ lstrcmpW (int ,char*) ;
 int ok (int,char*,...) ;
 int run_child (char*) ;
 int skip (char*) ;
 int wsprintfW (char*,char const*,int ) ;

__attribute__((used)) static void test_globalness(void)
{
    static const WCHAR format[] = {'t','e','s','t','_','%','u', 0};
    WCHAR secretName[MAX_PATH];
    IEnumBackgroundCopyJobs* enumJobs;
    IBackgroundCopyManager *manager = ((void*)0);
    HRESULT hres;
    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0),
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &manager);
    ok(hres == S_OK, "got 0x%08x\n", hres);

    wsprintfW(secretName, format, GetTickCount());
    run_child(secretName);

    hres = IBackgroundCopyManager_EnumJobs(manager, 0, &enumJobs);
    ok(hres == S_OK, "EnumJobs failed: %08x\n", hres);
    if(hres != S_OK)
        skip("Unable to create job enumerator.\n");
    else
    {
        ULONG i, n;
        IBackgroundCopyJob *job;
        BOOL found = FALSE;

        hres = IEnumBackgroundCopyJobs_GetCount(enumJobs, &n);
        ok(hres == S_OK, "GetCount failed: %08x\n", hres);
        for (i = 0; i < n && !found; ++i)
        {
            LPWSTR name;
            IEnumBackgroundCopyJobs_Next(enumJobs, 1, &job, ((void*)0));
            IBackgroundCopyJob_GetDisplayName(job, &name);
            if (lstrcmpW(name, secretName) == 0)
                found = TRUE;
            CoTaskMemFree(name);
            IBackgroundCopyJob_Release(job);
        }

        IEnumBackgroundCopyJobs_Release(enumJobs);
        ok(found, "Adding a job in another process failed\n");
    }

    IBackgroundCopyManager_Release(manager);
}
