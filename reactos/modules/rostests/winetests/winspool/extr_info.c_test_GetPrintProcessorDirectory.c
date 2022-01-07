
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPBYTE ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_ENVIRONMENT ;
 int ERROR_INVALID_LEVEL ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_INVALID_USER_BUFFER ;
 int GetLastError () ;
 int GetPrintProcessorDirectoryA (int *,int *,int,char*,int,int*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int RPC_S_INVALID_NET_ADDR ;
 int RPC_S_SERVER_UNAVAILABLE ;
 int RPC_X_NULL_REF_POINTER ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int * empty ;
 int * env_win9x_case ;
 int * env_x86 ;
 int * invalid_env ;
 scalar_t__ is_spooler_deactivated (int,int ) ;
 int ok (int,char*,...) ;
 int * server_does_not_exist ;

__attribute__((used)) static void test_GetPrintProcessorDirectory(void)
{
    LPBYTE buffer = ((void*)0);
    DWORD cbBuf = 0;
    DWORD pcbNeeded = 0;
    BOOL res;


    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), ((void*)0), 1, ((void*)0), 0, &cbBuf);
    if (is_spooler_deactivated(res, GetLastError())) return;

    ok( !res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
        "returned %d with %d (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, GetLastError());

    buffer = HeapAlloc(GetProcessHeap(), 0, cbBuf*2);
    if(buffer == ((void*)0)) return;

    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), ((void*)0), 1, buffer, cbBuf, &pcbNeeded);
    ok(res, "returned %d with %d (expected '!= 0')\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    buffer[0] = '\0';
    res = GetPrintProcessorDirectoryA(((void*)0), ((void*)0), 1, buffer, cbBuf*2, &pcbNeeded);
    ok(res, "returned %d with %d (expected '!= 0')\n", res, GetLastError());


    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA( ((void*)0), ((void*)0), 1, buffer, cbBuf-1, &pcbNeeded);
    ok( !res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
        "returned %d with %d (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, GetLastError());

    if (0)
    {


    pcbNeeded = 0;
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA( ((void*)0), ((void*)0), 1, ((void*)0), cbBuf, &pcbNeeded);

    ok( (!res && (GetLastError() == ERROR_INVALID_USER_BUFFER)) ||
        broken(res),
        "returned %d with %d (expected '0' with ERROR_INVALID_USER_BUFFER)\n",
        res, GetLastError());
    }

    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA( ((void*)0), ((void*)0), 1, buffer, cbBuf, ((void*)0));


    ok( !res && ((GetLastError() == RPC_X_NULL_REF_POINTER) ||
                 (GetLastError() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '0' with RPC_X_NULL_REF_POINTER "
        "or with ERROR_INVALID_PARAMETER)\n", res, GetLastError());

    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA( ((void*)0), ((void*)0), 1, ((void*)0), cbBuf, ((void*)0));


    ok( !res && ((GetLastError() == RPC_X_NULL_REF_POINTER) ||
                 (GetLastError() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '0' with RPC_X_NULL_REF_POINTER "
        "or with ERROR_INVALID_PARAMETER)\n", res, GetLastError());


    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), ((void*)0), 0, buffer, cbBuf, &pcbNeeded);

    ok( (!res && (GetLastError() == ERROR_INVALID_LEVEL)) ||
        broken(res && buffer[0]),
        "returned %d with %d (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, GetLastError());

    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), ((void*)0), 2, buffer, cbBuf, &pcbNeeded);

    ok( (!res && (GetLastError() == ERROR_INVALID_LEVEL)) ||
        broken(res && buffer[0]),
        "returned %d with %d (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, GetLastError());


    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), empty, 1, buffer, cbBuf*2, &pcbNeeded);
    ok(res, "returned %d with %d (expected '!= 0')\n", res, GetLastError());


    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), env_win9x_case, 1, buffer, cbBuf*2, &pcbNeeded);
    ok(res, "returned %d with %d (expected '!= 0')\n", res, GetLastError());



    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), env_x86, 1, buffer, cbBuf*2, &pcbNeeded);
    ok( res || (GetLastError() == ERROR_INVALID_ENVIRONMENT),
        "returned %d with %d (expected '!= 0' or '0' with "
        "ERROR_INVALID_ENVIRONMENT)\n", res, GetLastError());


    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(((void*)0), invalid_env, 1, buffer, cbBuf*2, &pcbNeeded);
    ok( !res && (GetLastError() == ERROR_INVALID_ENVIRONMENT),
        "returned %d with %d (expected '0' with ERROR_INVALID_ENVIRONMENT)\n",
        res, GetLastError());


    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(empty, ((void*)0), 1, buffer, cbBuf*2, &pcbNeeded);
    ok(res, "returned %d with %d (expected '!= 0')\n", res, GetLastError());


    buffer[0] = '\0';
    SetLastError(0xdeadbeef);
    res = GetPrintProcessorDirectoryA(server_does_not_exist, ((void*)0), 1, buffer, cbBuf*2, &pcbNeeded);
    ok( !res, "expected failure\n");
    ok( GetLastError() == RPC_S_SERVER_UNAVAILABLE ||
        GetLastError() == ERROR_INVALID_PARAMETER ||
        GetLastError() == RPC_S_INVALID_NET_ADDR,
        "unexpected last error %d\n", GetLastError());

    HeapFree(GetProcessHeap(), 0, buffer);
}
