
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int CP_ACP ;
 scalar_t__ E_POINTER ;
 int GetLastError () ;
 int INTERNET_MAX_URL_LENGTH ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int ) ;
 scalar_t__ S_OK ;
 int SetLastError (int) ;
 int URL_ESCAPE_UNSAFE ;
 int URL_WININET_COMPATIBILITY ;
 int lstrlenW (char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,int,...) ;
 scalar_t__ pUrlCanonicalizeW (char*,char*,int*,int) ;
 int win_skip (char*) ;
 char* winehqW ;

__attribute__((used)) static void test_UrlCanonicalizeW(void)
{
    WCHAR szReturnUrl[INTERNET_MAX_URL_LENGTH];
    DWORD dwSize;
    DWORD urllen;
    HRESULT hr;
    int i;


    if (!pUrlCanonicalizeW) {
        win_skip("UrlCanonicalizeW not found\n");
        return;
    }
    urllen = lstrlenW(winehqW);


    dwSize = (urllen-1);
    memset(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    SetLastError(0xdeadbeef);
    hr = pUrlCanonicalizeW(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    ok( (hr == E_POINTER) && (dwSize == (urllen + 1)),
        "got 0x%x with %u and size %u for %u (expected 'E_POINTER' and size %u)\n",
        hr, GetLastError(), dwSize, lstrlenW(szReturnUrl), urllen+1);



    dwSize = urllen;
    memset(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    SetLastError(0xdeadbeef);
    hr = pUrlCanonicalizeW(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    ok( (hr == E_POINTER) && (dwSize == (urllen + 1)),
        "got 0x%x with %u and size %u for %u (expected 'E_POINTER' and size %u)\n",
        hr, GetLastError(), dwSize, lstrlenW(szReturnUrl), urllen+1);


    dwSize = urllen +1;
    memset(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    SetLastError(0xdeadbeef);
    hr = pUrlCanonicalizeW(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    ok( (hr == S_OK) && (dwSize == urllen),
        "got 0x%x with %u and size %u for %u (expected 'S_OK' and size %u)\n",
        hr, GetLastError(), dwSize, lstrlenW(szReturnUrl), urllen);


    dwSize = (urllen+2);
    memset(szReturnUrl, '#', (urllen+4) * sizeof(WCHAR));
    szReturnUrl[urllen+4] = '\0';
    SetLastError(0xdeadbeef);
    hr = pUrlCanonicalizeW(winehqW, szReturnUrl, &dwSize, URL_WININET_COMPATIBILITY | URL_ESCAPE_UNSAFE);
    ok( (hr == S_OK) && (dwSize == urllen),
        "got 0x%x with %u and size %u for %u (expected 'S_OK' and size %u)\n",
        hr, GetLastError(), dwSize, lstrlenW(szReturnUrl), urllen);


    for (i = 1; i < 65536; i++)
    {
        WCHAR szUrl[128];
        BOOL choped;
        int pos;

        MultiByteToWideChar(CP_ACP, 0, "http://www.winehq.org/X", -1, szUrl, ARRAY_SIZE(szUrl));
        pos = lstrlenW(szUrl) - 1;
        szUrl[pos] = i;
        urllen = INTERNET_MAX_URL_LENGTH;
        pUrlCanonicalizeW(szUrl, szReturnUrl, &urllen, 0);
        choped = lstrlenW(szReturnUrl) < lstrlenW(szUrl);
        ok(choped == (i <= 32), "Incorrect char chopping for char %d\n", i);
    }
}
