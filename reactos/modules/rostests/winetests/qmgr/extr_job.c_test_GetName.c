
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef scalar_t__ HRESULT ;


 int CoTaskMemFree (int ) ;
 scalar_t__ IBackgroundCopyJob_GetDisplayName (int ,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ lstrcmpW (int ,int ) ;
 int ok (int,char*,...) ;
 int test_displayName ;
 int test_job ;

__attribute__((used)) static void test_GetName(void)
{
    HRESULT hres;
    LPWSTR displayName;

    hres = IBackgroundCopyJob_GetDisplayName(test_job, &displayName);
    ok(hres == S_OK, "GetName failed: %08x\n", hres);
    ok(lstrcmpW(displayName, test_displayName) == 0, "Got incorrect type\n");
    CoTaskMemFree(displayName);
}
