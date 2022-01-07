
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPBYTE ;
typedef int DWORD ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_LEVEL ;
 int ERROR_SUCCESS ;
 int EnumPortsA (int *,int,int *,int,int*,int*) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int RPC_X_NULL_REF_POINTER ;
 int SetLastError (int) ;
 scalar_t__ is_spooler_deactivated (int,int) ;
 int ok (int,char*,int,int,int,...) ;
 int skip (char*,int) ;

__attribute__((used)) static void test_EnumPorts(void)
{
    DWORD res;
    DWORD level;
    LPBYTE buffer;
    DWORD cbBuf;
    DWORD pcbNeeded;
    DWORD pcReturned;


    for(level = 0; level < 4; level++) {

        cbBuf = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = EnumPortsA(((void*)0), level, ((void*)0), 0, &cbBuf, &pcReturned);
        if (is_spooler_deactivated(res, GetLastError())) return;


        if(!level || (level > 2)) {

            ok( (!res && (GetLastError() == ERROR_INVALID_LEVEL)) ||
                (res && (pcReturned == 0)),
                "(%d) returned %d with %d and 0x%08x (expected '0' with "
                "ERROR_INVALID_LEVEL or '!=0' and 0x0)\n",
                level, res, GetLastError(), pcReturned);
            continue;
        }



        if (!res && (GetLastError() == ERROR_INVALID_LEVEL)) {
            skip("Level %d not supported\n", level);
            continue;
        }

        ok((!res) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n", level, res, GetLastError());

        buffer = HeapAlloc(GetProcessHeap(), 0, cbBuf *2);
        if (buffer == ((void*)0)) continue;

        pcbNeeded = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = EnumPortsA(((void*)0), level, buffer, cbBuf, &pcbNeeded, &pcReturned);
        ok(res, "(%d) returned %d with %d (expected '!=0')\n", level, res, GetLastError());
        ok(pcbNeeded == cbBuf, "(%d) returned %d (expected %d)\n", level, pcbNeeded, cbBuf);


        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = EnumPortsA(((void*)0), level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        ok(res, "(%d) returned %d with %d (expected '!=0')\n", level, res, GetLastError());
        ok(pcbNeeded == cbBuf, "(%d) returned %d (expected %d)\n", level, pcbNeeded, cbBuf);

        pcbNeeded = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = EnumPortsA(((void*)0), level, buffer, cbBuf-1, &pcbNeeded, &pcReturned);
        ok( !res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n", level, res, GetLastError());
        ok(pcbNeeded == cbBuf, "(%d) returned %d (expected %d)\n", level, pcbNeeded, cbBuf);
        SetLastError(0xdeadbeef);
        res = EnumPortsA(((void*)0), level, buffer, cbBuf, ((void*)0), &pcReturned);

        ok( (!res && (GetLastError() == RPC_X_NULL_REF_POINTER) ) ||
            ( res && (GetLastError() == ERROR_SUCCESS) ),
            "(%d) returned %d with %d (expected '0' with "
            "RPC_X_NULL_REF_POINTER or '!=0' with NO_ERROR)\n",
            level, res, GetLastError());


        SetLastError(0xdeadbeef);
        res = EnumPortsA(((void*)0), level, buffer, cbBuf, &pcbNeeded, ((void*)0));

        ok( (!res && (GetLastError() == RPC_X_NULL_REF_POINTER) ) ||
            ( res && (GetLastError() == ERROR_SUCCESS) ),
            "(%d) returned %d with %d (expected '0' with "
            "RPC_X_NULL_REF_POINTER or '!=0' with NO_ERROR)\n",
            level, res, GetLastError());

        HeapFree(GetProcessHeap(), 0, buffer);
    }
}
