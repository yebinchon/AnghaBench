
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pCC ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;
typedef int COMMCONFIG ;
typedef int CHAR ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 scalar_t__ ERROR_BADKEY ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,int ) ;
 int SetLastError (int) ;
 int ZeroMemory (int *,int) ;
 int * com1W ;
 int emptyA ;
 int * emptyW ;
 char* fmt_comA ;
 int lstrcatA (int *,int ) ;
 int lstrcatW (int *,int ) ;
 int ok (int,char*,scalar_t__,int ,...) ;
 scalar_t__ pGetDefaultCommConfigW (int *,int *,scalar_t__*) ;
 int sprintf (int *,char*,scalar_t__) ;
 int str_colonA ;
 int str_colonW ;
 int win_skip (char*) ;

__attribute__((used)) static void test_drvGetDefaultCommConfigW(void)
{
    COMMCONFIG pCC[3];
    WCHAR bufferW[16];
    CHAR bufferA[16];
    DWORD i;
    DWORD res;
    DWORD len;



    i = sizeof(COMMCONFIG);
    len = sizeof(COMMCONFIG) -1;
    ZeroMemory(pCC, sizeof(pCC));
    SetLastError(0xdeadbeef);
    res = pGetDefaultCommConfigW(com1W, pCC, &len);
    if (res == ERROR_CALL_NOT_IMPLEMENTED) {
        win_skip("*W not implemented\n");
        return;
    }
    ok( (res == ERROR_INSUFFICIENT_BUFFER) && (len >= i),
        "returned %u with %u and %u (expected "
        "ERROR_INSUFFICIENT_BUFFER and '>= %u')\n", res, GetLastError(), len, i);


    for (i = 0; i < 11 ; i++) {
        sprintf(bufferA, fmt_comA, i);
        MultiByteToWideChar(CP_ACP, 0, bufferA, -1, bufferW, ARRAY_SIZE(bufferW));
        len = sizeof(pCC);
        ZeroMemory(pCC, sizeof(pCC));
        SetLastError(0xdeadbeef);
        res = pGetDefaultCommConfigW(bufferW, pCC, &len);
        if (i == 0) {
            ok( res == ERROR_BADKEY,
                "returned %u with %u and %u for %s (expected "
                "ERROR_BADKEY)\n", res, GetLastError(), len, bufferA);
        }
        else
        {
            ok((res == ERROR_SUCCESS) || (res == ERROR_BADKEY),
               "returned %u with %u and %u for %s (expected ERROR_SUCCESS or "
               "ERROR_BADKEY)\n", res, GetLastError(), len, bufferA);
        }


        if (res == ERROR_SUCCESS) {
            lstrcatA(bufferA, str_colonA);
            lstrcatW(bufferW, str_colonW);
            len = sizeof(pCC);
            ZeroMemory(pCC, sizeof(pCC));
            res = pGetDefaultCommConfigW(bufferW, pCC, &len);
            ok( res == ERROR_BADKEY,
                "returned %u with %u and %u for %s (expected '0' with "
                "ERROR_BADKEY)\n", res, GetLastError(), len, bufferA);
        }
    }


    len = sizeof(pCC);
    ZeroMemory(pCC, sizeof(pCC));
    SetLastError(0xdeadbeef);
    res = pGetDefaultCommConfigW(emptyW, pCC, &len);
    ok( res == ERROR_BADKEY,
        "returned %u with %u and %u for %s (expected ERROR_BADKEY)\n",
        res, GetLastError(), len, emptyA);


    len = sizeof(pCC);
    ZeroMemory(pCC, sizeof(pCC));
    SetLastError(0xdeadbeef);
    res = pGetDefaultCommConfigW(((void*)0), pCC, &len);
    ok( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u and %u for NULL (expected ERROR_INVALID_PARAMETER)\n",
        res, GetLastError(), len);


    len = sizeof(pCC);
    SetLastError(0xdeadbeef);
    res = pGetDefaultCommConfigW(com1W, ((void*)0), &len);
    ok( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u and %u (expected ERROR_INVALID_PARAMETER)\n",
        res, GetLastError(), len);


    SetLastError(0xdeadbeef);
    res = pGetDefaultCommConfigW(com1W, pCC, ((void*)0));
    ok( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u (expected ERROR_INVALID_PARAMETER)\n",
        res, GetLastError());

}
