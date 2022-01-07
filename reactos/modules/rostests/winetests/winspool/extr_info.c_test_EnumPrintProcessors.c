
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPBYTE ;
typedef int DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_ENVIRONMENT ;
 scalar_t__ ERROR_INVALID_LEVEL ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_INVALID_USER_BUFFER ;
 int EnumPrintProcessorsA (int *,int *,int,int *,int,int*,int*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ RPC_X_NULL_REF_POINTER ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int * empty ;
 int * invalid_env ;
 scalar_t__ is_spooler_deactivated (int,scalar_t__) ;
 int ok (int,char*,int,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_EnumPrintProcessors(void)
{
    DWORD res;
    LPBYTE buffer;
    DWORD cbBuf;
    DWORD pcbNeeded;
    DWORD pcReturned;


    cbBuf = 0xdeadbeef;
    pcReturned = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = EnumPrintProcessorsA(((void*)0), ((void*)0), 1, ((void*)0), 0, &cbBuf, &pcReturned);
    if (is_spooler_deactivated(res, GetLastError())) return;

    if (res && !cbBuf) {
        skip("No Printprocessor installed\n");
        return;
    }

    ok((!res) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
        "got %u with %u (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, GetLastError());

    buffer = HeapAlloc(GetProcessHeap(), 0, cbBuf + 4);
    if (buffer == ((void*)0))
        return;

    SetLastError(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = EnumPrintProcessorsA(((void*)0), ((void*)0), 1, buffer, cbBuf, &pcbNeeded, &pcReturned);
    ok(res, "got %u with %u (expected '!=0')\n", res, GetLastError());



    SetLastError(0xdeadbeef);
    pcReturned = 0xdeadbeef;
    pcbNeeded = 0xdeadbeef;
    res = EnumPrintProcessorsA(((void*)0), ((void*)0), 1, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
    ok(res, "got %u with %u (expected '!=0')\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = EnumPrintProcessorsA(((void*)0), ((void*)0), 1, buffer, cbBuf-1, &pcbNeeded, &pcReturned);
    ok( !res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
        "got %u with %u (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, GetLastError());


    if (0) {

        SetLastError(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        res = EnumPrintProcessorsA(((void*)0), ((void*)0), 0, buffer, cbBuf, &pcbNeeded, &pcReturned);
        ok( !res && (GetLastError() == ERROR_INVALID_LEVEL),
            "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
            res, GetLastError());

        SetLastError(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        res = EnumPrintProcessorsA(((void*)0), ((void*)0), 2, buffer, cbBuf, &pcbNeeded, &pcReturned);
        ok( !res && (GetLastError() == ERROR_INVALID_LEVEL),
            "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
            res, GetLastError());
    }


    SetLastError(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = EnumPrintProcessorsA(((void*)0), empty, 1, buffer, cbBuf, &pcbNeeded, &pcReturned);
    ok(res, "got %u with %u (expected '!=0')\n", res, GetLastError());


    SetLastError(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = EnumPrintProcessorsA(((void*)0), invalid_env, 1, buffer, cbBuf, &pcbNeeded, &pcReturned);

    ok( broken(res) ||
        (GetLastError() == ERROR_INVALID_ENVIRONMENT) ||
        (GetLastError() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_ENVIRONMENT or "
        "ERROR_INVALID_PARAMETER)\n", res, GetLastError());



    if (0) {

        SetLastError(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        res = EnumPrintProcessorsA(((void*)0), ((void*)0), 1, ((void*)0), cbBuf, &pcbNeeded, &pcReturned);
        ok( !res && (GetLastError() == ERROR_INVALID_USER_BUFFER) ,
            "got %u with %u (expected '0' with ERROR_INVALID_USER_BUFFER)\n",
            res, GetLastError());
    }

    SetLastError(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    pcReturned = 0xdeadbeef;
    res = EnumPrintProcessorsA(((void*)0), ((void*)0), 1, buffer, cbBuf, ((void*)0), &pcReturned);

    ok( broken(res) || (!res && (GetLastError() == RPC_X_NULL_REF_POINTER)),
        "got %u with %u (expected '0' with RPC_X_NULL_REF_POINTER)\n",
        res, GetLastError());

    pcbNeeded = 0xdeadbeef;
    pcReturned = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = EnumPrintProcessorsA(((void*)0), ((void*)0), 1, buffer, cbBuf, &pcbNeeded, ((void*)0));

    ok( broken(res) || (!res && (GetLastError() == RPC_X_NULL_REF_POINTER)),
        "got %u with %u (expected '0' with RPC_X_NULL_REF_POINTER)\n",
        res, GetLastError());

    HeapFree(GetProcessHeap(), 0, buffer);

}
