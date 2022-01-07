
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IEnumBackgroundCopyFiles ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IBackgroundCopyJob_AddFile (int ,int ,int ) ;
 scalar_t__ IBackgroundCopyJob_EnumFiles (int ,int **) ;
 scalar_t__ IEnumBackgroundCopyFiles_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;
 int test_localPathA ;
 int test_remotePathA ;

__attribute__((used)) static void test_EnumFiles(void)
{
    HRESULT hres;
    IEnumBackgroundCopyFiles *enumFiles;
    ULONG res;

    hres = IBackgroundCopyJob_AddFile(test_job, test_remotePathA,
                                      test_localPathA);
    ok(hres == S_OK, "got 0x%08x\n", hres);

    hres = IBackgroundCopyJob_EnumFiles(test_job, &enumFiles);
    ok(hres == S_OK, "EnumFiles failed: 0x%08x\n", hres);

    res = IEnumBackgroundCopyFiles_Release(enumFiles);
    ok(res == 0, "Bad ref count on release: %u\n", res);
}
