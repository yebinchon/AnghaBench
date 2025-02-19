
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumBackgroundCopyFiles_GetCount (int ,scalar_t__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int test_enumFiles ;
 scalar_t__ test_fileCount ;

__attribute__((used)) static void test_GetCount(void)
{
    HRESULT hres;
    ULONG fileCount;

    hres = IEnumBackgroundCopyFiles_GetCount(test_enumFiles, &fileCount);
    ok(hres == S_OK, "GetCount failed: %08x\n", hres);
    ok(fileCount == test_fileCount, "Got incorrect count\n");
}
