
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_BADKEY ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 scalar_t__ RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKeyA (int ,char*,scalar_t__*) ;
 scalar_t__ hkey_main ;
 int ok (int,char*,scalar_t__) ;
 int trace (char*) ;

__attribute__((used)) static void test_reg_close_key(void)
{
    DWORD ret = 0;
    HKEY hkHandle;




    ret = RegOpenKeyA(HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkHandle);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCloseKey(hkHandle);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);


    ret = RegCloseKey(hkHandle);
    ok(ret == ERROR_INVALID_HANDLE || ret == ERROR_SUCCESS,
       "expected ERROR_INVALID_HANDLE or ERROR_SUCCESS, got %d\n", ret);


    ret = RegCloseKey(((void*)0));
    ok(ret == ERROR_INVALID_HANDLE || ret == ERROR_BADKEY,
       "expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\n", ret);





    if (hkey_main == hkHandle)
    {
        trace("The main handle is most likely closed, so re-opening\n");
        RegOpenKeyA( HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkey_main );
    }
}
