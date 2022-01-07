
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int IBackgroundCopyFile ;
typedef scalar_t__ HRESULT ;


 int IBackgroundCopyFile_Release (int *) ;
 scalar_t__ IEnumBackgroundCopyFiles_Next (int ,size_t,int **,size_t*) ;
 int NUM_FILES ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int test_enumFiles ;
 size_t test_fileCount ;

__attribute__((used)) static void test_Next_walkList_2(void)
{
    HRESULT hres;
    IBackgroundCopyFile *files[NUM_FILES];
    ULONG fetched;
    ULONG i;

    for (i = 0; i < test_fileCount; i++)
        files[i] = ((void*)0);

    fetched = 0;
    hres = IEnumBackgroundCopyFiles_Next(test_enumFiles, test_fileCount, files, &fetched);
    ok(hres == S_OK, "Next failed: %08x\n", hres);
    ok(fetched == test_fileCount, "Next returned the incorrect number of files: %08x\n", hres);

    for (i = 0; i < test_fileCount; i++)
    {
        ok(files[i] != ((void*)0), "Next returned NULL\n");
        if (files[i])
            IBackgroundCopyFile_Release(files[i]);
    }
}
