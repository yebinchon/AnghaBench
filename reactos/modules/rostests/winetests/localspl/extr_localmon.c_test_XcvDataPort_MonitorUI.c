
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int * cmd_MonitorUIW ;
 int * cmd_MonitorUI_lcaseW ;
 int * emptyW ;
 int * hXcv ;
 int * hXcv_noaccess ;
 int memset (int *,int ,scalar_t__) ;
 int ok (int,char*,scalar_t__,int ,scalar_t__) ;
 scalar_t__ pXcvDataPort (int *,int *,int *,int ,int *,int,scalar_t__*) ;
 int skip (char*,...) ;

__attribute__((used)) static void test_XcvDataPort_MonitorUI(void)
{
    DWORD res;
    BYTE buffer[MAX_PATH + 2];
    DWORD needed;
    DWORD len;



    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_MonitorUIW, ((void*)0), 0, ((void*)0), 0, &needed);
    if (res == ERROR_INVALID_PARAMETER) {
        skip("'MonitorUI' nor supported\n");
        return;
    }
    ok( (res == ERROR_INSUFFICIENT_BUFFER) && (needed <= MAX_PATH),
        "returned %d with %u and 0x%x (expected 'ERROR_INSUFFICIENT_BUFFER' "
        " and '<= MAX_PATH')\n", res, GetLastError(), needed);

    if (needed > MAX_PATH) {
        skip("buffer overflow (%u)\n", needed);
        return;
    }
    len = needed;


    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, emptyW, ((void*)0), 0, ((void*)0), 0, &needed);
    ok( res == ERROR_INVALID_PARAMETER, "returned %d with %u and 0x%x "
        "(expected 'ERROR_INVALID_PARAMETER')\n", res, GetLastError(), needed);

    if (0) {

        pXcvDataPort(hXcv, ((void*)0), ((void*)0), 0, buffer, MAX_PATH, &needed);
        pXcvDataPort(hXcv, cmd_MonitorUIW, ((void*)0), 0, ((void*)0), len, &needed);
        pXcvDataPort(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len, ((void*)0));
    }



    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(((void*)0), cmd_MonitorUIW, ((void*)0), 0, buffer, len, &needed);
    ok( res == ERROR_SUCCESS, "returned %d with %u and 0x%x "
        "(expected 'ERROR_SUCCESS')\n", res, GetLastError(), needed);



    memset(buffer, 0, len);
    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_MonitorUI_lcaseW, ((void*)0), 0, buffer, len, &needed);
    ok( res == ERROR_INVALID_PARAMETER, "returned %d with %u and 0x%x "
        "(expected 'ERROR_INVALID_PARAMETER')\n", res, GetLastError(), needed);


    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len+1, &needed);
    ok( res == ERROR_SUCCESS, "returned %d with %u and 0x%x "
        "(expected 'ERROR_SUCCESS')\n", res, GetLastError(), needed);




    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len-1, &needed);
    ok( res == ERROR_INSUFFICIENT_BUFFER, "returned %d with %u and 0x%x "
        "(expected 'ERROR_INSUFFICIENT_BUFFER')\n", res, GetLastError(), needed);


    memset(buffer, 0, len);
    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_MonitorUIW, ((void*)0), 0, buffer, len, &needed);
    ok( res == ERROR_SUCCESS, "returned %d with %u and 0x%x "
        "(expected 'ERROR_SUCCESS')\n", res, GetLastError(), needed);



    if (!hXcv_noaccess) return;


    memset(buffer, 0, len);
    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv_noaccess, cmd_MonitorUIW, ((void*)0), 0, buffer, sizeof(buffer), &needed);
    ok( res == ERROR_SUCCESS, "returned %d with %u and 0x%x "
        "(expected 'ERROR_SUCCESS')\n", res, GetLastError(), needed);
}
