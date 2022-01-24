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
typedef  scalar_t__ HINTERNET ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INTERNET_NAME_NOT_RESOLVED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ICU_BROWSER_MODE ; 
 int INTERNET_FLAG_NO_CACHE_WRITE ; 
 int INTERNET_FLAG_RELOAD ; 
 int INTERNET_FLAG_TRANSFER_BINARY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEST_URL ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static void FUNC10(void)
{
  HINTERNET myhinternet, myhttp;
  char buffer[0x400];
  DWORD size, readbytes, totalbytes=0;
  BOOL ret;

  ret = FUNC0(TEST_URL);
  FUNC8(ret || FUNC1() == ERROR_FILE_NOT_FOUND,
          "DeleteUrlCacheEntry returned %x, GetLastError() = %d\n", ret, FUNC1());

  myhinternet = FUNC4("Winetest",0,NULL,NULL,INTERNET_FLAG_NO_CACHE_WRITE);
  FUNC8((myhinternet != 0), "InternetOpen failed, error %u\n",FUNC1());
  size = 0x400;
  ret = FUNC2(TEST_URL, buffer, &size,ICU_BROWSER_MODE);
  FUNC8( ret, "InternetCanonicalizeUrl failed, error %u\n",FUNC1());

  FUNC7(0);
  myhttp = FUNC5(myhinternet, TEST_URL, 0, 0,
			   INTERNET_FLAG_RELOAD|INTERNET_FLAG_NO_CACHE_WRITE|INTERNET_FLAG_TRANSFER_BINARY,0);
  if (FUNC1() == ERROR_INTERNET_NAME_NOT_RESOLVED)
    return; /* WinXP returns this when not connected to the net */
  FUNC8((myhttp != 0),"InternetOpenUrl failed, error %u\n",FUNC1());
  ret = FUNC6(myhttp, buffer,0x400,&readbytes);
  FUNC8( ret, "InternetReadFile failed, error %u\n",FUNC1());
  totalbytes += readbytes;
  while (readbytes && FUNC6(myhttp, buffer,0x400,&readbytes))
    totalbytes += readbytes;
  FUNC9("read 0x%08x bytes\n",totalbytes);

  FUNC3(myhttp);
  FUNC3(myhinternet);

  ret = FUNC0(TEST_URL);
  FUNC8(!ret && FUNC1() == ERROR_FILE_NOT_FOUND, "INTERNET_FLAG_NO_CACHE_WRITE flag doesn't work\n");
}