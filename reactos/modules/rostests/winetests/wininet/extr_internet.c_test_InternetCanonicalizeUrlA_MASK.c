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
typedef  char* LPCSTR ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 char* ERROR_INSUFFICIENT_BUFFER ; 
 char* ERROR_INTERNET_INVALID_OPTION ; 
 char* ERROR_INVALID_PARAMETER ; 
 char* FUNC0 () ; 
 int ICU_BROWSER_MODE ; 
 int ICU_DECODE ; 
 int ICU_NO_ENCODE ; 
 int FUNC1 (char*,char*,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    CHAR    buffer[256];
    LPCSTR  url;
    DWORD   urllen;
    DWORD   dwSize;
    DWORD   res;

    /* Acrobat Updater 5 calls this for Adobe Reader 8.1 */
    url = "http://swupmf.adobe.com/manifest/50/win/AdobeUpdater.upd";
    urllen = FUNC5(url);

    FUNC6(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    dwSize = 1; /* Acrobat Updater use this size */
    FUNC3(0xdeadbeef);
    res = FUNC1(url, buffer, &dwSize, 0);
    FUNC7( !res && (FUNC0() == ERROR_INSUFFICIENT_BUFFER) && (dwSize == (urllen+1)),
        "got %u and %u with size %u for '%s' (%d)\n",
        res, FUNC0(), dwSize, buffer, FUNC5(buffer));


    /* buffer has no space for the terminating '\0' */
    FUNC6(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    dwSize = urllen;
    FUNC3(0xdeadbeef);
    res = FUNC1(url, buffer, &dwSize, 0);
    /* dwSize is nr. of needed bytes with the terminating '\0' */
    FUNC7( !res && (FUNC0() == ERROR_INSUFFICIENT_BUFFER) && (dwSize == (urllen+1)),
        "got %u and %u with size %u for '%s' (%d)\n",
        res, FUNC0(), dwSize, buffer, FUNC5(buffer));

    /* buffer has the required size */
    FUNC6(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    dwSize = urllen+1;
    FUNC3(0xdeadbeef);
    res = FUNC1(url, buffer, &dwSize, 0);
    /* dwSize is nr. of copied bytes without the terminating '\0' */
    FUNC7( res && (dwSize == urllen) && (FUNC4(url, buffer) == 0),
        "got %u and %u with size %u for '%s' (%d)\n",
        res, FUNC0(), dwSize, buffer, FUNC5(buffer));

    FUNC6(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    dwSize = sizeof(buffer);
    FUNC3(0xdeadbeef);
    res = FUNC1("file:///C:/Program%20Files/Atmel/AVR%20Tools/STK500/STK500.xml", buffer, &dwSize, ICU_DECODE | ICU_NO_ENCODE);
    FUNC7(res, "InternetCanonicalizeUrlA failed %u\n", FUNC0());
    FUNC7(dwSize == FUNC5(buffer), "got %d expected %d\n", dwSize, FUNC5(buffer));
    FUNC7(!FUNC4("file://C:\\Program Files\\Atmel\\AVR Tools\\STK500\\STK500.xml", buffer),
       "got %s expected 'file://C:\\Program Files\\Atmel\\AVR Tools\\STK500\\STK500.xml'\n", buffer);

    /* buffer is larger as the required size */
    FUNC6(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    dwSize = urllen+2;
    FUNC3(0xdeadbeef);
    res = FUNC1(url, buffer, &dwSize, 0);
    /* dwSize is nr. of copied bytes without the terminating '\0' */
    FUNC7( res && (dwSize == urllen) && (FUNC4(url, buffer) == 0),
        "got %u and %u with size %u for '%s' (%d)\n",
        res, FUNC0(), dwSize, buffer, FUNC5(buffer));


    /* check NULL pointers */
    FUNC6(buffer, '#', urllen + 4);
    buffer[urllen + 4] = '\0';
    dwSize = urllen+1;
    FUNC3(0xdeadbeef);
    res = FUNC1(NULL, buffer, &dwSize, 0);
    FUNC7( !res && (FUNC0() == ERROR_INVALID_PARAMETER),
        "got %u and %u with size %u for '%s' (%d)\n",
        res, FUNC0(), dwSize, buffer, FUNC5(buffer));

    FUNC6(buffer, '#', urllen + 4);
    buffer[urllen + 4] = '\0';
    dwSize = urllen+1;
    FUNC3(0xdeadbeef);
    res = FUNC1(url, NULL, &dwSize, 0);
    FUNC7( !res && (FUNC0() == ERROR_INVALID_PARAMETER),
        "got %u and %u with size %u for '%s' (%d)\n",
        res, FUNC0(), dwSize, buffer, FUNC5(buffer));

    FUNC6(buffer, '#', urllen + 4);
    buffer[urllen + 4] = '\0';
    dwSize = urllen+1;
    FUNC3(0xdeadbeef);
    res = FUNC1(url, buffer, NULL, 0);
    FUNC7( !res && (FUNC0() == ERROR_INVALID_PARAMETER),
        "got %u and %u with size %u for '%s' (%d)\n",
        res, FUNC0(), dwSize, buffer, FUNC5(buffer));

    /* test with trailing space */
    dwSize = 256;
    res = FUNC1("http://www.winehq.org/index.php?x= ", buffer, &dwSize, ICU_BROWSER_MODE);
    FUNC7(res == 1, "InternetCanonicalizeUrlA failed\n");
    FUNC7(!FUNC8(buffer, "http://www.winehq.org/index.php?x="), "Trailing space should have been stripped even in ICU_BROWSER_MODE (%s)\n", buffer);

    res = FUNC2(NULL, 0xdeadbeef, buffer, sizeof(buffer));
    FUNC7(!res, "InternetSetOptionA succeeded\n");
    FUNC7(FUNC0() == ERROR_INTERNET_INVALID_OPTION,
       "InternetSetOptionA failed %u, expected ERROR_INTERNET_INVALID_OPTION\n", FUNC0());
}