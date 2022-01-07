
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int org_value ;
typedef int * PBYTE ;
typedef int * HKEY ;
typedef int DWORD ;
typedef char CHAR ;


 int ERROR_ACCESS_DENIED ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 int RegDeleteValueA (int *,int ) ;
 int RegOpenKeyExA (int ,int ,int ,int ,int **) ;
 int RegQueryValueExA (int *,int ,int *,int *,int *,int*) ;
 int RegSetValueExA (int *,int ,int ,int ,int *,int) ;
 int SetLastError (int) ;
 int TransmissionRetryTimeoutA ;
 int WinNT_CV_WindowsA ;
 int cmd_GetTransmissionRetryTimeoutW ;
 scalar_t__ emptyA ;
 int hXcv ;
 int lstrlenA (char*) ;
 char* num_0A ;
 char* num_1000000A ;
 char* num_1A ;
 char* num_999999A ;
 int ok (int,char*,int,...) ;
 int pXcvDataPort (int ,int ,int *,int ,int *,int,int*) ;
 int skip (char*,...) ;

__attribute__((used)) static void test_XcvDataPort_GetTransmissionRetryTimeout(void)
{
    CHAR org_value[16];
    HKEY hroot = ((void*)0);
    DWORD buffer[2];
    DWORD res;
    DWORD needed;
    DWORD len;



    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_GetTransmissionRetryTimeoutW, ((void*)0), 0, ((void*)0), 0, &needed);
    if (res == ERROR_INVALID_PARAMETER) {
        skip("'GetTransmissionRetryTimeout' not supported\n");
        return;
    }
    len = sizeof(DWORD);
    ok( (res == ERROR_INSUFFICIENT_BUFFER) && (needed == len),
        "returned %d with %u and %u (expected ERROR_INSUFFICIENT_BUFFER "
        "and '%u')\n", res, GetLastError(), needed, len);
    len = needed;


    res = RegOpenKeyExA(HKEY_LOCAL_MACHINE, WinNT_CV_WindowsA, 0, KEY_ALL_ACCESS, &hroot);
    if (res == ERROR_ACCESS_DENIED) {
        skip("ACCESS_DENIED\n");
        return;
    }

    if (res != ERROR_SUCCESS) {

        skip("got %d\n", res);
        return;
    }

    org_value[0] = '\0';
    needed = sizeof(org_value)-1 ;
    res = RegQueryValueExA(hroot, TransmissionRetryTimeoutA, ((void*)0), ((void*)0), (PBYTE) org_value, &needed);
    ok( (res == ERROR_SUCCESS) || (res == ERROR_FILE_NOT_FOUND),
        "returned %u and %u for \"%s\" (expected ERROR_SUCCESS or "
        "ERROR_FILE_NOT_FOUND)\n", res, needed, org_value);


    RegDeleteValueA(hroot, TransmissionRetryTimeoutA);
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_GetTransmissionRetryTimeoutW, ((void*)0), 0, (PBYTE) buffer, len, &needed);
    ok( (res == ERROR_SUCCESS) && (buffer[0] == 45),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '45')\n", res, GetLastError(), needed, buffer[0]);


    res = RegSetValueExA(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)emptyA, 1);
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", GetLastError());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_GetTransmissionRetryTimeoutW, ((void*)0), 0, (PBYTE) buffer, len, &needed);
    ok( (res == ERROR_SUCCESS) && (buffer[0] == 45),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '45')\n", res, GetLastError(), needed, buffer[0]);


    res = RegSetValueExA(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_0A, lstrlenA(num_0A)+1);
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", GetLastError());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_GetTransmissionRetryTimeoutW, ((void*)0), 0, (PBYTE) buffer, len, &needed);
    ok( (res == ERROR_SUCCESS) && (buffer[0] == 0),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '0')\n", res, GetLastError(), needed, buffer[0]);


    res = RegSetValueExA(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_1A, lstrlenA(num_1A)+1);
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", GetLastError());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_GetTransmissionRetryTimeoutW, ((void*)0), 0, (PBYTE) buffer, len, &needed);
    ok( (res == ERROR_SUCCESS) && (buffer[0] == 1),
        "returned %d with %u and %u for %d\n (expected 'ERROR_SUCCESS' "
        "for '1')\n", res, GetLastError(), needed, buffer[0]);

    res = RegSetValueExA(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_999999A, lstrlenA(num_999999A)+1);
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", GetLastError());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_GetTransmissionRetryTimeoutW, ((void*)0), 0, (PBYTE) buffer, len, &needed);
    ok( (res == ERROR_SUCCESS) && (buffer[0] == 999999),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '999999')\n", res, GetLastError(), needed, buffer[0]);


    res = RegSetValueExA(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_1000000A, lstrlenA(num_1000000A)+1);
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", GetLastError());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_GetTransmissionRetryTimeoutW, ((void*)0), 0, (PBYTE) buffer, len, &needed);
    ok( (res == ERROR_SUCCESS) && (buffer[0] == 1000000),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '1000000')\n", res, GetLastError(), needed, buffer[0]);


    RegDeleteValueA(hroot, TransmissionRetryTimeoutA);
    if (org_value[0]) {
        res = RegSetValueExA(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)org_value, lstrlenA(org_value)+1);
        ok(res == ERROR_SUCCESS, "unable to restore original value (got %u): %s\n", res, org_value);
    }

    RegCloseKey(hroot);
}
