#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szReturnUrl ;
typedef  int /*<<< orphan*/  inplaceW ;
typedef  int /*<<< orphan*/  inplace ;
typedef  float WCHAR ;
struct TYPE_3__ {char* url; char const* expect; } ;
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 float* FUNC2 (char const*) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int S_OK ; 
 TYPE_1__* TEST_URL_UNESCAPE ; 
 int /*<<< orphan*/  URL_UNESCAPE_INPLACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (float*,float*) ; 
 int FUNC6 (float*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int FUNC8 (char*,char*,int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (float*,float*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
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

    if (!&pUrlUnescapeA) {
        FUNC11("UrlUnescapeA not found\n");
        return;
    }
    for (i = 0; i < FUNC0(TEST_URL_UNESCAPE); i++) {
        dwEscaped=INTERNET_MAX_URL_LENGTH;
        res = FUNC8(TEST_URL_UNESCAPE[i].url, szReturnUrl, &dwEscaped, 0);
        FUNC7(res == S_OK,
            "UrlUnescapeA returned 0x%x (expected S_OK) for \"%s\"\n",
            res, TEST_URL_UNESCAPE[i].url);
        FUNC7(FUNC10(szReturnUrl,TEST_URL_UNESCAPE[i].expect)==0, "Expected \"%s\", but got \"%s\" from \"%s\"\n", TEST_URL_UNESCAPE[i].expect, szReturnUrl, TEST_URL_UNESCAPE[i].url);

        FUNC4(szReturnUrl, sizeof(szReturnUrl));
        /* if we set the buffer pointer to NULL here, UrlUnescape fails and the string is not converted */
        res = FUNC8(TEST_URL_UNESCAPE[i].url, szReturnUrl, NULL, 0);
        FUNC7(res == E_INVALIDARG,
            "UrlUnescapeA returned 0x%x (expected E_INVALIDARG) for \"%s\"\n",
            res, TEST_URL_UNESCAPE[i].url);
        FUNC7(FUNC10(szReturnUrl,"")==0, "Expected empty string\n");

        if (&pUrlUnescapeW) {
            dwEscaped = INTERNET_MAX_URL_LENGTH;
            urlW = FUNC2(TEST_URL_UNESCAPE[i].url);
            expected_urlW = FUNC2(TEST_URL_UNESCAPE[i].expect);
            res = FUNC9(urlW, ret_urlW, &dwEscaped, 0);
            FUNC7(res == S_OK,
                "UrlUnescapeW returned 0x%x (expected S_OK) for \"%s\"\n",
                res, TEST_URL_UNESCAPE[i].url);

            FUNC3(CP_ACP,0,ret_urlW,-1,szReturnUrl,INTERNET_MAX_URL_LENGTH,0,0);
            FUNC7(FUNC5(ret_urlW, expected_urlW)==0,
                "Expected \"%s\", but got \"%s\" from \"%s\" flags %08lx\n",
                TEST_URL_UNESCAPE[i].expect, szReturnUrl, TEST_URL_UNESCAPE[i].url, 0L);
            FUNC1(urlW);
            FUNC1(expected_urlW);
        }
    }

    dwEscaped = sizeof(inplace);
    res = FUNC8(inplace, NULL, &dwEscaped, URL_UNESCAPE_INPLACE);
    FUNC7(res == S_OK, "UrlUnescapeA returned 0x%x (expected S_OK)\n", res);
    FUNC7(!FUNC10(inplace, expected), "got %s expected %s\n", inplace, expected);
    FUNC7(dwEscaped == 27, "got %d expected 27\n", dwEscaped);

    /* if we set the buffer pointer to NULL, the string apparently still gets converted (Google Lively does this) */
    res = FUNC8(another_inplace, NULL, NULL, URL_UNESCAPE_INPLACE);
    FUNC7(res == S_OK, "UrlUnescapeA returned 0x%x (expected S_OK)\n", res);
    FUNC7(!FUNC10(another_inplace, expected), "got %s expected %s\n", another_inplace, expected);

    if (&pUrlUnescapeW) {
        dwEscaped = sizeof(inplaceW);
        res = FUNC9(inplaceW, NULL, &dwEscaped, URL_UNESCAPE_INPLACE);
        FUNC7(res == S_OK, "UrlUnescapeW returned 0x%x (expected S_OK)\n", res);
        FUNC7(dwEscaped == 50, "got %d expected 50\n", dwEscaped);

        /* if we set the buffer pointer to NULL, the string apparently still gets converted (Google Lively does this) */
        res = FUNC9(another_inplaceW, NULL, NULL, URL_UNESCAPE_INPLACE);
        FUNC7(res == S_OK, "UrlUnescapeW returned 0x%x (expected S_OK)\n", res);

        FUNC7(FUNC6(another_inplaceW) == 24, "got %d expected 24\n", FUNC6(another_inplaceW));
    }
}