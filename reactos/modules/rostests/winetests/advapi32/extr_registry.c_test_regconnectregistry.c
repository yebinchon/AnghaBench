
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compName ;
typedef int * SC_HANDLE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ERROR_BAD_NETPATH ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ ERROR_DLL_INIT_FAILED ;
 int GENERIC_READ ;
 int GetComputerNameA (int *,int*) ;
 scalar_t__ GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_COMPUTERNAME_LENGTH ;
 int * OpenSCManagerA (int *,int *,int ) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegConnectRegistryA (int *,int ,int *) ;
 int SetLastError (int) ;
 int lstrcpyA (int *,char*) ;
 int lstrcpynA (int *,int *,int) ;
 int ok (int,char*,scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_regconnectregistry( void)
{
    CHAR compName[MAX_COMPUTERNAME_LENGTH + 1];
    CHAR netwName[MAX_COMPUTERNAME_LENGTH + 3];
    DWORD len = sizeof(compName) ;
    BOOL ret;
    LONG retl;
    HKEY hkey;
    SC_HANDLE schnd;

    SetLastError(0xdeadbeef);
    ret = GetComputerNameA(compName, &len);
    ok( ret, "GetComputerName failed err = %d\n", GetLastError());
    if( !ret) return;

    lstrcpyA(netwName, "\\\\");
    lstrcpynA(netwName+2, compName, MAX_COMPUTERNAME_LENGTH + 1);

    retl = RegConnectRegistryA( compName, HKEY_LOCAL_MACHINE, &hkey);
    ok( !retl ||
        retl == ERROR_DLL_INIT_FAILED ||
        retl == ERROR_BAD_NETPATH,
        "RegConnectRegistryA failed err = %d\n", retl);
    if( !retl) RegCloseKey( hkey);

    retl = RegConnectRegistryA( netwName, HKEY_LOCAL_MACHINE, &hkey);
    ok( !retl ||
        retl == ERROR_DLL_INIT_FAILED ||
        retl == ERROR_BAD_NETPATH,
        "RegConnectRegistryA failed err = %d\n", retl);
    if( !retl) RegCloseKey( hkey);

    SetLastError(0xdeadbeef);
    schnd = OpenSCManagerA( compName, ((void*)0), GENERIC_READ);
    if (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("OpenSCManagerA is not implemented\n");
        return;
    }

    ok( schnd != ((void*)0), "OpenSCManagerA failed err = %d\n", GetLastError());
    CloseServiceHandle( schnd);

    SetLastError(0xdeadbeef);
    schnd = OpenSCManagerA( netwName, ((void*)0), GENERIC_READ);
    ok( schnd != ((void*)0), "OpenSCManagerA failed err = %d\n", GetLastError());
    CloseServiceHandle( schnd);

}
