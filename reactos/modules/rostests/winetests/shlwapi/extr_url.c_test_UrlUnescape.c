
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szReturnUrl ;
typedef int inplaceW ;
typedef int inplace ;
typedef float WCHAR ;
struct TYPE_3__ {char* url; char const* expect; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef char CHAR ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CP_ACP ;
 int E_INVALIDARG ;
 int FreeWideString (float*) ;
 float* GetWideString (char const*) ;
 int INTERNET_MAX_URL_LENGTH ;
 int S_OK ;
 TYPE_1__* TEST_URL_UNESCAPE ;
 int URL_UNESCAPE_INPLACE ;
 int WideCharToMultiByte (int ,int ,float*,int,char*,int,int ,int ) ;
 int ZeroMemory (char*,int) ;
 scalar_t__ lstrcmpW (float*,float*) ;
 int lstrlenW (float*) ;
 int ok (int,char*,...) ;
 int pUrlUnescapeA (char*,char*,int*,int ) ;
 int pUrlUnescapeW (float*,float*,int*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_UrlUnescape(void)
{
    CHAR szReturnUrl[INTERNET_MAX_URL_LENGTH];
    WCHAR ret_urlW[INTERNET_MAX_URL_LENGTH];
    WCHAR *urlW, *expected_urlW;
    DWORD dwEscaped;
    size_t i;
    static char inplace[] = "file:///C:/Program%20Files";
    static char another_inplace[] = "file:///C:/Program%20Files";
    static const char expected[] = "file:///C:/Program Files";
    static WCHAR inplaceW[] = {'f','i','l','e',':','/','/','/','C',':','/','P','r','o','g','r','a','m',' ','F','i','l','e','s',0};
    static WCHAR another_inplaceW[] ={'f','i','l','e',':','/','/','/',
                'C',':','/','P','r','o','g','r','a','m','%','2','0','F','i','l','e','s',0};
    HRESULT res;

    if (!pUrlUnescapeA) {
        win_skip("UrlUnescapeA not found\n");
        return;
    }
    for (i = 0; i < ARRAY_SIZE(TEST_URL_UNESCAPE); i++) {
        dwEscaped=INTERNET_MAX_URL_LENGTH;
        res = pUrlUnescapeA(TEST_URL_UNESCAPE[i].url, szReturnUrl, &dwEscaped, 0);
        ok(res == S_OK,
            "UrlUnescapeA returned 0x%x (expected S_OK) for \"%s\"\n",
            res, TEST_URL_UNESCAPE[i].url);
        ok(strcmp(szReturnUrl,TEST_URL_UNESCAPE[i].expect)==0, "Expected \"%s\", but got \"%s\" from \"%s\"\n", TEST_URL_UNESCAPE[i].expect, szReturnUrl, TEST_URL_UNESCAPE[i].url);

        ZeroMemory(szReturnUrl, sizeof(szReturnUrl));

        res = pUrlUnescapeA(TEST_URL_UNESCAPE[i].url, szReturnUrl, ((void*)0), 0);
        ok(res == E_INVALIDARG,
            "UrlUnescapeA returned 0x%x (expected E_INVALIDARG) for \"%s\"\n",
            res, TEST_URL_UNESCAPE[i].url);
        ok(strcmp(szReturnUrl,"")==0, "Expected empty string\n");

        if (pUrlUnescapeW) {
            dwEscaped = INTERNET_MAX_URL_LENGTH;
            urlW = GetWideString(TEST_URL_UNESCAPE[i].url);
            expected_urlW = GetWideString(TEST_URL_UNESCAPE[i].expect);
            res = pUrlUnescapeW(urlW, ret_urlW, &dwEscaped, 0);
            ok(res == S_OK,
                "UrlUnescapeW returned 0x%x (expected S_OK) for \"%s\"\n",
                res, TEST_URL_UNESCAPE[i].url);

            WideCharToMultiByte(CP_ACP,0,ret_urlW,-1,szReturnUrl,INTERNET_MAX_URL_LENGTH,0,0);
            ok(lstrcmpW(ret_urlW, expected_urlW)==0,
                "Expected \"%s\", but got \"%s\" from \"%s\" flags %08lx\n",
                TEST_URL_UNESCAPE[i].expect, szReturnUrl, TEST_URL_UNESCAPE[i].url, 0L);
            FreeWideString(urlW);
            FreeWideString(expected_urlW);
        }
    }

    dwEscaped = sizeof(inplace);
    res = pUrlUnescapeA(inplace, ((void*)0), &dwEscaped, URL_UNESCAPE_INPLACE);
    ok(res == S_OK, "UrlUnescapeA returned 0x%x (expected S_OK)\n", res);
    ok(!strcmp(inplace, expected), "got %s expected %s\n", inplace, expected);
    ok(dwEscaped == 27, "got %d expected 27\n", dwEscaped);


    res = pUrlUnescapeA(another_inplace, ((void*)0), ((void*)0), URL_UNESCAPE_INPLACE);
    ok(res == S_OK, "UrlUnescapeA returned 0x%x (expected S_OK)\n", res);
    ok(!strcmp(another_inplace, expected), "got %s expected %s\n", another_inplace, expected);

    if (pUrlUnescapeW) {
        dwEscaped = sizeof(inplaceW);
        res = pUrlUnescapeW(inplaceW, ((void*)0), &dwEscaped, URL_UNESCAPE_INPLACE);
        ok(res == S_OK, "UrlUnescapeW returned 0x%x (expected S_OK)\n", res);
        ok(dwEscaped == 50, "got %d expected 50\n", dwEscaped);


        res = pUrlUnescapeW(another_inplaceW, ((void*)0), ((void*)0), URL_UNESCAPE_INPLACE);
        ok(res == S_OK, "UrlUnescapeW returned 0x%x (expected S_OK)\n", res);

        ok(lstrlenW(another_inplaceW) == 24, "got %d expected 24\n", lstrlenW(another_inplaceW));
    }
}
