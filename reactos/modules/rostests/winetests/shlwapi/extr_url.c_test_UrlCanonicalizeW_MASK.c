#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int URL_ESCAPE_UNSAFE ; 
 int URL_WININET_COMPATIBILITY ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 scalar_t__ FUNC7 (char*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* winehqW ; 

__attribute__((used)) static void FUNC9(void)
{
    WCHAR szReturnUrl[INTERNET_MAX_URL_LENGTH];
    DWORD dwSize;
    DWORD urllen;
    HRESULT hr;
    int i;


    if (!&pUrlCanonicalizeW) {
        FUNC8("UrlCanonicalizeW not found\n");
        return;
    }
    urllen = FUNC4(winehqW);

    /* buffer has no space for the result */
    dwSize = (urllen-1);
    FUNC5(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    FUNC3(0xdeadbeef);
    hr = FUNC7(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    FUNC6( (hr == E_POINTER) && (dwSize == (urllen + 1)),
        "got 0x%x with %u and size %u for %u (expected 'E_POINTER' and size %u)\n",
        hr, FUNC1(), dwSize, FUNC4(szReturnUrl), urllen+1);


    /* buffer has no space for the terminating '\0' */
    dwSize = urllen;
    FUNC5(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    FUNC3(0xdeadbeef);
    hr = FUNC7(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    FUNC6( (hr == E_POINTER) && (dwSize == (urllen + 1)),
        "got 0x%x with %u and size %u for %u (expected 'E_POINTER' and size %u)\n",
        hr, FUNC1(), dwSize, FUNC4(szReturnUrl), urllen+1);

    /* buffer has the required size */
    dwSize = urllen +1;
    FUNC5(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    FUNC3(0xdeadbeef);
    hr = FUNC7(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    FUNC6( (hr == S_OK) && (dwSize == urllen),
        "got 0x%x with %u and size %u for %u (expected 'S_OK' and size %u)\n",
        hr, FUNC1(), dwSize, FUNC4(szReturnUrl), urllen);

    /* buffer is larger as the required size */
    dwSize = (urllen+2);
    FUNC5(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    FUNC3(0xdeadbeef);
    hr = FUNC7(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    FUNC6( (hr == S_OK) && (dwSize == urllen),
        "got 0x%x with %u and size %u for %u (expected 'S_OK' and size %u)\n",
        hr, FUNC1(), dwSize, FUNC4(szReturnUrl), urllen);

    /* check that the characters 1..32 are chopped from the end of the string */
    for (i = 1; i < 65536; i++)
    {
        WCHAR szUrl[128];
        BOOL choped;
        int pos;

        FUNC2(CP_ACP, 0, "http://www.winehq.org/X", -1, szUrl, FUNC0(szUrl));
        pos = FUNC4(szUrl) - 1;
        szUrl[pos] = i;
        urllen = INTERNET_MAX_URL_LENGTH;
        FUNC7(szUrl, szReturnUrl, &urllen, 0);
        choped = FUNC4(szReturnUrl) < FUNC4(szUrl);
        FUNC6(choped == (i <= 32), "Incorrect char chopping for char %d\n", i);
    }
}