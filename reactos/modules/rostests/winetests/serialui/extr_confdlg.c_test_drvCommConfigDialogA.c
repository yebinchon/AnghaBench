
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pCC ;
struct TYPE_5__ {int dwSize; } ;
typedef int DWORD ;
typedef TYPE_1__ COMMCONFIG ;
typedef int CHAR ;


 int ERROR_BADKEY ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int * emptyA ;
 char* fmt_comA ;
 int ok (int,char*,int,int ,...) ;
 int pCommConfigDialogA (int *,int *,TYPE_1__*) ;
 int pGetDefaultCommConfigA (int *,TYPE_1__*,int*) ;
 int sprintf (int *,char*,int) ;
 int trace (char*,int,int ,int *) ;
 int win_skip (char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_drvCommConfigDialogA(void)
{
    COMMCONFIG pCC[3];
    CHAR bufferA[16];
    DWORD i;
    DWORD res;
    DWORD len;



    for (i = 1; i < 5 ; i++) {
        sprintf(bufferA, fmt_comA, i);
        len = sizeof(pCC);
        ZeroMemory(pCC, sizeof(pCC));
        SetLastError(0xdeadbeef);
        res = pGetDefaultCommConfigA(bufferA, pCC, &len);
        if (res == ERROR_CALL_NOT_IMPLEMENTED) {

            win_skip("*A not implemented\n");
            return;
        }

        if (res == ERROR_SUCCESS) {

            if (winetest_interactive) {
                SetLastError(0xdeadbeef);
                res = pCommConfigDialogA(bufferA, ((void*)0), pCC);

                trace("returned %u with %u for '%s'\n", res, GetLastError(), bufferA);
            }

            ZeroMemory(pCC, sizeof(pCC));
            SetLastError(0xdeadbeef);
            res = pCommConfigDialogA(bufferA, ((void*)0), pCC);
            ok( res == ERROR_INSUFFICIENT_BUFFER,
                "returned %u with %u for '%s' (expected ERROR_INSUFFICIENT_BUFFER)\n",
                res, GetLastError(), bufferA);


            SetLastError(0xdeadbeef);
            res = pCommConfigDialogA(bufferA, ((void*)0), ((void*)0));
            ok( res == ERROR_INVALID_PARAMETER,
                "returned %u with %u for '%s' (expected ERROR_INVALID_PARAMETER)\n",
                res, GetLastError(), bufferA);
        }
    }


    ZeroMemory(pCC, sizeof(pCC));
    SetLastError(0xdeadbeef);
    res = pCommConfigDialogA(emptyA, ((void*)0), pCC);
    ok( res == ERROR_INSUFFICIENT_BUFFER,
        "returned %u with %u (expected ERROR_INSUFFICIENT_BUFFER)\n",
        res, GetLastError());


    ZeroMemory(pCC, sizeof(pCC));
    pCC[0].dwSize = sizeof(COMMCONFIG);
    SetLastError(0xdeadbeef);
    res = pCommConfigDialogA(emptyA, ((void*)0), pCC);
    ok( res == ERROR_BADKEY, "returned %u with %u (expected ERROR_BADKEY)\n",
        res, GetLastError());


    ZeroMemory(pCC, sizeof(pCC));
    SetLastError(0xdeadbeef);
    res = pCommConfigDialogA(((void*)0), ((void*)0), pCC);
    ok( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u (expected ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());
}
