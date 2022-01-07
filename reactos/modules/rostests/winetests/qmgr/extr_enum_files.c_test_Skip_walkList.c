
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumBackgroundCopyFiles_Skip (int ,int) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_enumFiles ;
 scalar_t__ test_fileCount ;

__attribute__((used)) static void test_Skip_walkList(void)
{
    HRESULT hres;
    ULONG i;

    for (i = 0; i < test_fileCount; i++)
    {
        hres = IEnumBackgroundCopyFiles_Skip(test_enumFiles, 1);
        ok(hres == S_OK, "Skip failed: %08x\n", hres);
    }

    hres = IEnumBackgroundCopyFiles_Skip(test_enumFiles, 1);
    ok(hres == S_FALSE, "Skip expected end of list: %08x\n", hres);
}
