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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  char const CHAR ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (char const*,char const*,int*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int,int) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(const char* szUrl, DWORD dwPart, DWORD dwFlags, const char* szExpected)
{
  CHAR szPart[INTERNET_MAX_URL_LENGTH];
  WCHAR wszPart[INTERNET_MAX_URL_LENGTH];
  LPWSTR wszUrl = FUNC1(szUrl);
  LPWSTR wszConvertedPart;
  HRESULT res;
  DWORD dwSize;

  dwSize = 1;
  res = FUNC4(szUrl, szPart, &dwSize, dwPart, dwFlags);
  FUNC3(res == E_POINTER, "UrlGetPart for \"%s\" gave: 0x%08x\n", szUrl, res);
  FUNC3(dwSize == FUNC7(szExpected)+1 ||
          (*szExpected == '?' && dwSize == FUNC7(szExpected)),
          "UrlGetPart for \"%s\" gave size: %u\n", szUrl, dwSize);

  dwSize = INTERNET_MAX_URL_LENGTH;
  res = FUNC4(szUrl, szPart, &dwSize, dwPart, dwFlags);
  FUNC3(res == S_OK,
    "UrlGetPartA for \"%s\" part 0x%08x returned 0x%x and \"%s\"\n",
    szUrl, dwPart, res, szPart);
  if (&pUrlGetPartW) {
    dwSize = INTERNET_MAX_URL_LENGTH;
    res = FUNC5(wszUrl, wszPart, &dwSize, dwPart, dwFlags);
    FUNC3(res == S_OK,
      "UrlGetPartW for \"%s\" part 0x%08x returned 0x%x\n",
      szUrl, dwPart, res);

    wszConvertedPart = FUNC1(szPart);

    FUNC3(FUNC2(wszPart,wszConvertedPart)==0,
        "Strings didn't match between ascii and unicode UrlGetPart!\n");

    FUNC0(wszConvertedPart);
  }
  FUNC0(wszUrl);

  /* Note that v6.0 and later don't return '?' with the query */
  FUNC3(FUNC6(szPart,szExpected)==0 ||
     (*szExpected=='?' && !FUNC6(szPart,szExpected+1)),
	 "Expected %s, but got %s\n", szExpected, szPart);
}