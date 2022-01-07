
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pCC ;
typedef int WCHAR ;
struct TYPE_5__ {int dwSize; } ;
typedef int DWORD ;
typedef TYPE_1__ COMMCONFIG ;
typedef int CHAR ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int ERROR_BADKEY ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,int ) ;
 int SetLastError (int) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int * emptyW ;
 char* fmt_comA ;
 int ok (int,char*,int,int ,...) ;
 int pCommConfigDialogW (int *,int *,TYPE_1__*) ;
 int pGetDefaultCommConfigW (int *,TYPE_1__*,int*) ;
 int sprintf (int *,char*,int) ;
 int trace (char*,int,int ,int *) ;
 int win_skip (char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_drvCommConfigDialogW(void)
{
    COMMCONFIG pCC[3];
    CHAR bufferA[16];
    WCHAR bufferW[16];
    DWORD i;
    DWORD res;
    DWORD len;



    for (i = 1; i < 5 ; i++) {
        sprintf(bufferA, fmt_comA, i);
        MultiByteToWideChar(CP_ACP, 0, bufferA, -1, bufferW, ARRAY_SIZE(bufferW));
        len = sizeof(pCC);
        ZeroMemory(pCC, sizeof(pCC));
        SetLastError(0xdeadbeef);
        res = pGetDefaultCommConfigW(bufferW, pCC, &len);
        if (res == ERROR_CALL_NOT_IMPLEMENTED) {
            win_skip("*W not implemented\n");
            return;
        }

        if (res == ERROR_SUCCESS) {

            if (winetest_interactive) {
                SetLastError(0xdeadbeef);
                res = pCommConfigDialogW(bufferW, ((void*)0), pCC);

                trace("returned %u with %u for '%s'\n", res, GetLastError(), bufferA);
            }

            ZeroMemory(pCC, sizeof(pCC));
            SetLastError(0xdeadbeef);
            res = pCommConfigDialogW(bufferW, ((void*)0), pCC);
            ok( res == ERROR_INSUFFICIENT_BUFFER,
                "returned %u with %u for '%s' (expected ERROR_INSUFFICIENT_BUFFER)\n",
                res, GetLastError(), bufferA);

            SetLastError(0xdeadbeef);
            res = pCommConfigDialogW(bufferW, ((void*)0), ((void*)0));
            ok( res == ERROR_INVALID_PARAMETER,
                "returned %u with %u for '%s' (expected ERROR_INVALID_PARAMETER)\n",
                res, GetLastError(), bufferA);
        }
    }


    ZeroMemory(pCC, sizeof(pCC));
    SetLastError(0xdeadbeef);
    res = pCommConfigDialogW(emptyW, ((void*)0), pCC);
    ok( res == ERROR_INSUFFICIENT_BUFFER,
        "returned %u with %u (expected ERROR_INSUFFICIENT_BUFFER)\n",
        res, GetLastError());


    ZeroMemory(pCC, sizeof(pCC));
    pCC[0].dwSize = sizeof(COMMCONFIG);
    SetLastError(0xdeadbeef);
    res = pCommConfigDialogW(emptyW, ((void*)0), pCC);
    ok( res == ERROR_BADKEY, "returned %u with %u (expected ERROR_BADKEY)\n",
        res, GetLastError());


    ZeroMemory(pCC, sizeof(pCC));
    SetLastError(0xdeadbeef);
    res = pCommConfigDialogW(((void*)0), ((void*)0), pCC);
    ok( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u (expected ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());
}
