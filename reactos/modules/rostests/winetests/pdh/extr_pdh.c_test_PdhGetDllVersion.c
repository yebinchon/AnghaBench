
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_CVERSION_WIN50 ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PDH_VERSION ;
 scalar_t__ PdhGetDllVersion (scalar_t__*) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_PdhGetDllVersion(void)
{
    PDH_STATUS ret;
    DWORD version;

    ret = PdhGetDllVersion(((void*)0));
    ok(ret == PDH_INVALID_ARGUMENT ||
       broken(ret == ERROR_SUCCESS),
       "Expected PdhGetDllVersion to return PDH_INVALID_ARGUMENT, got %d\n", ret);

    ret = PdhGetDllVersion(&version);
    ok(ret == ERROR_SUCCESS,
       "Expected PdhGetDllVersion to return ERROR_SUCCESS, got %d\n", ret);

    if (ret == ERROR_SUCCESS)
    {
        ok(version == PDH_CVERSION_WIN50 ||
           version == PDH_VERSION,
           "Expected version number to be PDH_CVERSION_WIN50 or PDH_VERSION, got %u\n", version);
    }
}
