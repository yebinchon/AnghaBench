
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPBYTE ;
typedef int DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int SetLastError (int) ;
 int * emptyW ;
 int ok (int,char*,int,int,scalar_t__,int,int) ;
 int pEnumPorts (int *,int,int *,int,int*,int*) ;
 int * server_does_not_existW ;

__attribute__((used)) static void test_EnumPorts(void)
{
    DWORD res;
    DWORD level;
    LPBYTE buffer;
    DWORD cbBuf;
    DWORD pcbNeeded;
    DWORD pcReturned;

    if (!pEnumPorts) return;


    for(level = 0; level < 4; level++) {

        cbBuf = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pEnumPorts(((void*)0), level, ((void*)0), 0, &cbBuf, &pcReturned);


        if(!level || (level > 2)) {


            ok( (cbBuf == 0) && (pcReturned == 0),
                "(%d) returned %d with %u and %d, %d (expected 0, 0)\n",
                level, res, GetLastError(), cbBuf, pcReturned);
            continue;
        }

        ok( !res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %u and %d, %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n",
            level, res, GetLastError(), cbBuf, pcReturned);

        buffer = HeapAlloc(GetProcessHeap(), 0, cbBuf * 2);
        if (buffer == ((void*)0)) continue;

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pEnumPorts(((void*)0), level, buffer, cbBuf, &pcbNeeded, &pcReturned);
        ok( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, GetLastError(), pcbNeeded, pcReturned);


        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pEnumPorts(((void*)0), level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        ok( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, GetLastError(), pcbNeeded, pcReturned);

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pEnumPorts(((void*)0), level, buffer, cbBuf-1, &pcbNeeded, &pcReturned);
        ok( !res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %u and %d, %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n",
            level, res, GetLastError(), pcbNeeded, pcReturned);

        if (0)
        {

            pEnumPorts(((void*)0), level, ((void*)0), cbBuf, &pcbNeeded, &pcReturned);
            pEnumPorts(((void*)0), level, buffer, cbBuf, ((void*)0), &pcReturned);
            pEnumPorts(((void*)0), level, buffer, cbBuf, &pcbNeeded, ((void*)0));
        }


        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pEnumPorts(emptyW, level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        ok( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, GetLastError(), pcbNeeded, pcReturned);

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pEnumPorts(server_does_not_existW, level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        ok( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, GetLastError(), pcbNeeded, pcReturned);

        HeapFree(GetProcessHeap(), 0, buffer);
    }
}
