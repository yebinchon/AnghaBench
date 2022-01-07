
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IBackgroundCopyFile ;
typedef scalar_t__ HRESULT ;


 int IBackgroundCopyFile_Release (int *) ;
 scalar_t__ IEnumBackgroundCopyFiles_Next (int ,int,int **,int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_enumFiles ;
 scalar_t__ test_fileCount ;

__attribute__((used)) static void test_Next_walkListNull(void)
{
    HRESULT hres;
    IBackgroundCopyFile *file;
    ULONG i;


    for (i = 0; i < test_fileCount; i++)
    {
        hres = IEnumBackgroundCopyFiles_Next(test_enumFiles, 1, &file, ((void*)0));
        ok(hres == S_OK, "Next failed: %08x\n", hres);
        IBackgroundCopyFile_Release(file);
    }


    hres = IEnumBackgroundCopyFiles_Next(test_enumFiles, 1, &file, ((void*)0));
    ok(hres == S_FALSE, "Next off end of available files failed: %08x\n", hres);
}
