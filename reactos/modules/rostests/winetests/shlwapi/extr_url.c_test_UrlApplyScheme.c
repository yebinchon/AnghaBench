
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {size_t newlen; int flags; int * url; int newurl; int res; } ;
typedef int HRESULT ;
typedef size_t DWORD ;
typedef int CHAR ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CP_ACP ;
 int E_INVALIDARG ;
 int E_POINTER ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,size_t) ;
 TYPE_1__* TEST_APPLY ;
 int TEST_APPLY_MAX_LENGTH ;
 int WideCharToMultiByte (int ,int ,int *,int,int *,int,int *,int *) ;
 int lstrcmpA (int *,int ) ;
 int lstrcpyA (int *,int ) ;
 size_t lstrlenA (int ) ;
 int ok (int,char*,size_t,...) ;
 int pUrlApplySchemeA (int *,int *,size_t*,int ) ;
 int pUrlApplySchemeW (int *,int *,size_t*,int ) ;
 int untouchedA ;
 int win_skip (char*) ;

__attribute__((used)) static void test_UrlApplyScheme(void)
{
    CHAR newurl[TEST_APPLY_MAX_LENGTH];
    WCHAR urlW[TEST_APPLY_MAX_LENGTH];
    WCHAR newurlW[TEST_APPLY_MAX_LENGTH];
    HRESULT res;
    DWORD len;
    DWORD i;

    if (!pUrlApplySchemeA) {
        win_skip("UrlApplySchemeA not found\n");
        return;
    }

    for (i = 0; i < ARRAY_SIZE(TEST_APPLY); i++) {
        len = TEST_APPLY_MAX_LENGTH;
        lstrcpyA(newurl, untouchedA);
        res = pUrlApplySchemeA(TEST_APPLY[i].url, newurl, &len, TEST_APPLY[i].flags);
        ok( res == TEST_APPLY[i].res,
            "#%dA: got HRESULT 0x%x (expected 0x%x)\n", i, res, TEST_APPLY[i].res);

        ok( len == TEST_APPLY[i].newlen,
            "#%dA: got len %d (expected %d)\n", i, len, TEST_APPLY[i].newlen);

        ok( !lstrcmpA(newurl, TEST_APPLY[i].newurl),
            "#%dA: got '%s' (expected '%s')\n", i, newurl, TEST_APPLY[i].newurl);


        len = TEST_APPLY_MAX_LENGTH;
        lstrcpyA(newurl, untouchedA);
        MultiByteToWideChar(CP_ACP, 0, newurl, -1, newurlW, len);
        MultiByteToWideChar(CP_ACP, 0, TEST_APPLY[i].url, -1, urlW, len);

        res = pUrlApplySchemeW(urlW, newurlW, &len, TEST_APPLY[i].flags);
        WideCharToMultiByte(CP_ACP, 0, newurlW, -1, newurl, TEST_APPLY_MAX_LENGTH, ((void*)0), ((void*)0));
        ok( res == TEST_APPLY[i].res,
            "#%dW: got HRESULT 0x%x (expected 0x%x)\n", i, res, TEST_APPLY[i].res);

        ok( len == TEST_APPLY[i].newlen,
            "#%dW: got len %d (expected %d)\n", i, len, TEST_APPLY[i].newlen);

        ok( !lstrcmpA(newurl, TEST_APPLY[i].newurl),
            "#%dW: got '%s' (expected '%s')\n", i, newurl, TEST_APPLY[i].newurl);

    }


    lstrcpyA(newurl, untouchedA);
    len = lstrlenA(TEST_APPLY[0].newurl);
    res = pUrlApplySchemeA(TEST_APPLY[0].url, newurl, &len, TEST_APPLY[0].flags);
    ok(res == E_POINTER, "got HRESULT 0x%x (expected E_POINTER)\n", res);

    i = lstrlenA(TEST_APPLY[0].newurl)+1;
    ok(len == i, "got len %d (expected %d)\n", len, i);
    ok(!lstrcmpA(newurl, untouchedA), "got '%s' (expected '%s')\n", newurl, untouchedA);


    lstrcpyA(newurl, untouchedA);
    len = TEST_APPLY_MAX_LENGTH;
    res = pUrlApplySchemeA(((void*)0), newurl, &len, TEST_APPLY[0].flags);
    ok(res == E_INVALIDARG, "got HRESULT 0x%x (expected E_INVALIDARG)\n", res);
    ok(len == TEST_APPLY_MAX_LENGTH, "got len %d\n", len);
    ok(!lstrcmpA(newurl, untouchedA), "got '%s' (expected '%s')\n", newurl, untouchedA);

    len = TEST_APPLY_MAX_LENGTH;
    res = pUrlApplySchemeA(TEST_APPLY[0].url, ((void*)0), &len, TEST_APPLY[0].flags);
    ok(res == E_INVALIDARG, "got HRESULT 0x%x (expected E_INVALIDARG)\n", res);
    ok(len == TEST_APPLY_MAX_LENGTH, "got len %d\n", len);

    lstrcpyA(newurl, untouchedA);
    res = pUrlApplySchemeA(TEST_APPLY[0].url, newurl, ((void*)0), TEST_APPLY[0].flags);
    ok(res == E_INVALIDARG, "got HRESULT 0x%x (expected E_INVALIDARG)\n", res);
    ok(!lstrcmpA(newurl, untouchedA), "got '%s' (expected '%s')\n", newurl, untouchedA);

}
