
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef scalar_t__ HRESULT ;


 int CoTaskMemFree (int ) ;
 scalar_t__ IBackgroundCopyFile_GetRemoteName (int ,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ lstrcmpW (int ,int ) ;
 int ok (int,char*,...) ;
 int test_file ;
 int test_remoteUrl ;

__attribute__((used)) static void test_GetRemoteName(void)
{
    HRESULT hres;
    LPWSTR name;

    hres = IBackgroundCopyFile_GetRemoteName(test_file, &name);
    ok(hres == S_OK, "GetRemoteName failed: %08x\n", hres);
    ok(lstrcmpW(name, test_remoteUrl) == 0, "Got incorrect remote name\n");
    CoTaskMemFree(name);
}
