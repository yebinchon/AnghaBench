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
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  appdata ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  common_appdata ; 
 int /*<<< orphan*/  default_page_url ; 
 int /*<<< orphan*/  does_not_exist ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  regpath_iemain ; 
 int /*<<< orphan*/  regpath_shellfolders ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  start_page ; 

__attribute__((used)) static void FUNC6(void)
{
    CHAR buffer[INTERNET_MAX_URL_LENGTH];
    HRESULT hr;
    DWORD used;
    DWORD len;

    if (!&pURLSubRegQueryA) {
        FUNC5("URLSubRegQueryA not found\n");
        return;
    }

    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    /* called by inetcpl.cpl */
    hr = FUNC4(regpath_iemain, default_page_url, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    FUNC3(hr == E_FAIL || hr == S_OK, "got 0x%x (expected E_FAIL or S_OK)\n", hr);

    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    /* called by inetcpl.cpl */
    hr = FUNC4(regpath_iemain, start_page, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    len = FUNC1(buffer);
    /* respect privacy: do not dump the url */
    FUNC3(hr == S_OK, "got 0x%x and %d (expected S_OK)\n", hr, len);

    /* test buffer length: just large enough */
    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_iemain, start_page, REG_SZ, buffer, len+1, -1);
    used = FUNC1(buffer);
    /* respect privacy: do not dump the url */
    FUNC3((hr == S_OK) && (used == len),
        "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len);

    /* no space for terminating 0: result is truncated */
    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_iemain, start_page, REG_SZ, buffer, len, -1);
    used = FUNC1(buffer);
    FUNC3((hr == S_OK) && (used == len - 1),
        "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len - 1);

    /* no space for the complete result: truncate another char */
    if (len > 1) {
        FUNC2(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        hr = FUNC4(regpath_iemain, start_page, REG_SZ, buffer, len-1, -1);
        used = FUNC1(buffer);
        FUNC3((hr == S_OK) && (used == (len - 2)),
            "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len - 2);
    }

    /* only space for the terminating 0: function still succeeded */
    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_iemain, start_page, REG_SZ, buffer, 1, -1);
    used = FUNC1(buffer);
    FUNC3((hr == S_OK) && !used,
        "got 0x%x and %d (expected S_OK and 0)\n", hr, used);

    /* size of buffer is 0, but the function still succeed.
       buffer[0] is cleared in IE 5.01 and IE 5.5 (Buffer Overflow) */
    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_iemain, start_page, REG_SZ, buffer, 0, -1);
    used = FUNC1(buffer);
    FUNC3( (hr == S_OK) &&
        ((used == INTERNET_MAX_URL_LENGTH - 1) || FUNC0(used == 0)) ,
        "got 0x%x and %d (expected S_OK and INTERNET_MAX_URL_LENGTH - 1)\n",
        hr, used);

    /* still succeed without a buffer for the result */
    hr = FUNC4(regpath_iemain, start_page, REG_SZ, NULL, 0, -1);
    FUNC3(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    /* still succeed, when a length is given without a buffer */
    hr = FUNC4(regpath_iemain, start_page, REG_SZ, NULL, INTERNET_MAX_URL_LENGTH, -1);
    FUNC3(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    /* this value does not exist */
    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_iemain, does_not_exist, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    /* random bytes are copied to the buffer */
    FUNC3((hr == E_FAIL), "got 0x%x (expected E_FAIL)\n", hr);

    /* the third parameter is ignored. Is it really a type? (data is REG_SZ) */
    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_iemain, start_page, REG_DWORD, buffer, INTERNET_MAX_URL_LENGTH, -1);
    used = FUNC1(buffer);
    FUNC3((hr == S_OK) && (used == len),
        "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len);

    /* the function works for HKCU and HKLM */
    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_shellfolders, appdata, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    used = FUNC1(buffer);
    FUNC3(hr == S_OK, "got 0x%x and %d (expected S_OK)\n", hr, used);

    FUNC2(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC4(regpath_shellfolders, common_appdata, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    used = FUNC1(buffer);
    FUNC3(hr == S_OK, "got 0x%x and %d (expected S_OK)\n", hr, used);

    /* todo: what does the last parameter mean? */
}