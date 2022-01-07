
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumBackgroundCopyFiles_Reset (int ) ;
 scalar_t__ IEnumBackgroundCopyFiles_Skip (int ,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_enumFiles ;
 int test_fileCount ;

__attribute__((used)) static void test_Reset(void)
{
    HRESULT hres;

    hres = IEnumBackgroundCopyFiles_Skip(test_enumFiles, test_fileCount);
    ok(hres == S_OK, "Skip failed: %08x\n", hres);
    hres = IEnumBackgroundCopyFiles_Reset(test_enumFiles);
    ok(hres == S_OK, "Reset failed: %08x\n", hres);
    hres = IEnumBackgroundCopyFiles_Skip(test_enumFiles, test_fileCount);
    ok(hres == S_OK, "Reset failed: %08x\n", hres);
}
