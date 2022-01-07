
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pName; } ;
struct TYPE_3__ {int pName; int pDriverPath; } ;
typedef TYPE_1__* LPDRIVER_INFO_2A ;
typedef int * LPBYTE ;
typedef int DWORD ;
typedef TYPE_2__ DRIVER_INFO_1A ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_ENVIRONMENT ;
 int ERROR_INVALID_LEVEL ;
 int EnumPrinterDriversA (int *,char*,int,int *,int,int*,int*) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int RPC_X_NULL_REF_POINTER ;
 int SetLastError (int) ;
 int * default_printer ;
 scalar_t__ is_spooler_deactivated (int,int ) ;
 int ok (int,char*,int,...) ;
 int on_win9x ;
 int pEnumPrinterDriversW (int *,int *,int,int *,int ,int*,int*) ;
 int skip (char*,...) ;
 int * strrchr (int ,char) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_EnumPrinterDrivers(void)
{
    static char env_all[] = "all";

    DWORD res;
    LPBYTE buffer;
    DWORD cbBuf;
    DWORD pcbNeeded;
    DWORD pcReturned;
    DWORD level;


    for(level = 0; level < 10; level++) {
        cbBuf = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = EnumPrinterDriversA(((void*)0), ((void*)0), level, ((void*)0), 0, &cbBuf, &pcReturned);
        if (is_spooler_deactivated(res, GetLastError())) return;


        if(!level || (level == 7) || (level > 8)) {

            ok( (!res && (GetLastError() == ERROR_INVALID_LEVEL)) ||
                (res && (pcReturned == 0)),
                "(%d) got %u with %u and 0x%x "
                "(expected '0' with ERROR_INVALID_LEVEL or '!=0' and 0x0)\n",
                level, res, GetLastError(), pcReturned);
            continue;
        }


        if (!res && (GetLastError() == ERROR_INVALID_LEVEL)) {
            skip("Level %d not supported\n", level);
            continue;
        }

        ok( ((!res) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER)) ||
            (res && (default_printer == ((void*)0))),
            "(%u) got %u with %u for %s (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER or '!= 0' without a printer)\n",
            level, res, GetLastError(), default_printer);

        if (!cbBuf) {
            skip("no valid buffer size returned\n");
            continue;
        }


        if (!on_win9x && pEnumPrinterDriversW)
        {
            DWORD double_needed;
            DWORD double_returned;
            pEnumPrinterDriversW(((void*)0), ((void*)0), level, ((void*)0), 0, &double_needed, &double_returned);
            ok(double_needed == cbBuf, "level %d: EnumPrinterDriversA returned different size %d than EnumPrinterDriversW (%d)\n", level, cbBuf, double_needed);
        }

        buffer = HeapAlloc(GetProcessHeap(), 0, cbBuf + 4);
        if (buffer == ((void*)0)) continue;

        SetLastError(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        res = EnumPrinterDriversA(((void*)0), ((void*)0), level, buffer, cbBuf, &pcbNeeded, &pcReturned);
        ok(res, "(%u) got %u with %u (expected '!=0')\n", level, res, GetLastError());
        ok(pcbNeeded == cbBuf, "(%d) returned %d (expected %d)\n", level, pcbNeeded, cbBuf);


        if (level > 1) {
            LPDRIVER_INFO_2A di = (LPDRIVER_INFO_2A) buffer;

            ok( strrchr(di->pDriverPath, '\\') != ((void*)0),
                "(%u) got %s for %s (expected a full path)\n",
                level, di->pDriverPath, di->pName);

        }

        SetLastError(0xdeadbeef);
        pcReturned = 0xdeadbeef;
        pcbNeeded = 0xdeadbeef;
        res = EnumPrinterDriversA(((void*)0), ((void*)0), level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        ok(res, "(%u) got %u with %u (expected '!=0')\n", level, res, GetLastError());
        ok(pcbNeeded == cbBuf, "(%u) returned %u (expected %u)\n", level, pcbNeeded, cbBuf);

        SetLastError(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        res = EnumPrinterDriversA(((void*)0), ((void*)0), level, buffer, cbBuf-1, &pcbNeeded, &pcReturned);
        ok( !res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
            "(%u) got %u with %u (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
            level, res, GetLastError());
        ok(pcbNeeded == cbBuf, "(%u) returned %u (expected %u)\n", level, pcbNeeded, cbBuf);
        SetLastError(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        res = EnumPrinterDriversA(((void*)0), ((void*)0), level, buffer, cbBuf, ((void*)0), &pcReturned);
        ok( res || GetLastError() == RPC_X_NULL_REF_POINTER,
            "(%u) got %u with %u (expected '!=0' or '0' with "
            "RPC_X_NULL_REF_POINTER)\n", level, res, GetLastError());

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = EnumPrinterDriversA(((void*)0), ((void*)0), level, buffer, cbBuf, &pcbNeeded, ((void*)0));
        ok( res || GetLastError() == RPC_X_NULL_REF_POINTER,
            "(%u) got %u with %u (expected '!=0' or '0' with "
            "RPC_X_NULL_REF_POINTER)\n", level, res, GetLastError());

        HeapFree(GetProcessHeap(), 0, buffer);
    }

    pcbNeeded = 0;
    pcReturned = 0;
    SetLastError(0xdeadbeef);
    res = EnumPrinterDriversA(((void*)0), env_all, 1, ((void*)0), 0, &pcbNeeded, &pcReturned);
    if (res)
    {
        skip("no printer drivers found\n");
        return;
    }
    if (GetLastError() == ERROR_INVALID_ENVIRONMENT)
    {
        win_skip("NT4 and below don't support the 'all' environment value\n");
        return;
    }
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "unexpected error %u\n", GetLastError());

    buffer = HeapAlloc(GetProcessHeap(), 0, pcbNeeded);
    res = EnumPrinterDriversA(((void*)0), env_all, 1, buffer, pcbNeeded, &pcbNeeded, &pcReturned);
    ok(res, "EnumPrinterDriversA failed %u\n", GetLastError());
    if (res && pcReturned > 0)
    {
        DRIVER_INFO_1A *di_1 = (DRIVER_INFO_1A *)buffer;
        ok((LPBYTE) di_1->pName == ((void*)0) || (LPBYTE) di_1->pName < buffer ||
            (LPBYTE) di_1->pName >= (LPBYTE)(di_1 + pcReturned),
            "Driver Information not in sequence; pName %p, top of data %p\n",
            di_1->pName, di_1 + pcReturned);
    }

    HeapFree(GetProcessHeap(), 0, buffer);
}
