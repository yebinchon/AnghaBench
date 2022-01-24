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

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int EBADF ; 
 int EINVAL ; 
 int ERANGE ; 
 int STRUNCATE ; 
 int errno ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (char*,int,char const*) ; 
 int FUNC5 (char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR szLongText[] = { 'T','h','i','s','A','L','o','n','g','s','t','r','i','n','g',0 };
    static WCHAR szDest[18];
    static WCHAR szDestShort[8];
    int ret;

    if(!&p_wcscpy_s)
    {
        FUNC6("wcscpy_s not found\n");
        return;
    }

    /* Test NULL Dest */
    errno = EBADF;
    ret = FUNC4(NULL, 18, szLongText);
    FUNC3(ret == EINVAL, "p_wcscpy_s expect EINVAL got %d\n", ret);
    FUNC3(errno == EINVAL, "expected errno EINVAL got %d\n", errno);

    /* Test NULL Source */
    errno = EBADF;
    szDest[0] = 'A';
    ret = FUNC4(szDest, 18, NULL);
    FUNC3(ret == EINVAL, "expected EINVAL got %d\n", ret);
    FUNC3(errno == EINVAL, "expected errno EINVAL got %d\n", errno);
    FUNC3(szDest[0] == 0, "szDest[0] not 0, got %c\n", szDest[0]);

    /* Test invalid size */
    errno = EBADF;
    szDest[0] = 'A';
    ret = FUNC4(szDest, 0, szLongText);
    /* Later versions changed the return value for this case to EINVAL,
     * and don't modify the result if the dest size is 0.
     */
    FUNC3(ret == ERANGE || ret == EINVAL, "expected ERANGE/EINVAL got %d\n", ret);
    FUNC3(errno == ERANGE || errno == EINVAL, "expected errno ERANGE/EINVAL got %d\n", errno);
    FUNC3(szDest[0] == 0 || ret == EINVAL, "szDest[0] not 0\n");

    /* Copy same buffer size */
    ret = FUNC4(szDest, 18, szLongText);
    FUNC3(ret == 0, "expected 0 got %d\n", ret);
    FUNC3(FUNC1(szDest, szLongText) == 0, "szDest != szLongText\n");

    /* dest == source */
    ret = FUNC4(szDest, 18, szDest);
    FUNC3(ret == 0, "expected 0 got %d\n", ret);
    FUNC3(FUNC1(szDest, szLongText) == 0, "szDest != szLongText\n");

    /* Copy smaller buffer size */
    errno = EBADF;
    szDest[0] = 'A';
    ret = FUNC4(szDestShort, 8, szLongText);
    FUNC3(ret == ERANGE || ret == EINVAL, "expected ERANGE/EINVAL got %d\n", ret);
    FUNC3(errno == ERANGE || errno == EINVAL, "expected errno ERANGE/EINVAL got %d\n", errno);
    FUNC3(szDestShort[0] == 0, "szDestShort[0] not 0\n");

    if(!&p_wcsncpy_s)
    {
        FUNC6("wcsncpy_s not found\n");
        return;
    }

    ret = FUNC5(NULL, 18, szLongText, FUNC0(szLongText));
    FUNC3(ret == EINVAL, "p_wcsncpy_s expect EINVAL got %d\n", ret);

    szDest[0] = 'A';
    ret = FUNC5(szDest, 18, NULL, 1);
    FUNC3(ret == EINVAL, "expected EINVAL got %d\n", ret);
    FUNC3(szDest[0] == 0, "szDest[0] not 0\n");

    szDest[0] = 'A';
    ret = FUNC5(szDest, 18, NULL, 0);
    FUNC3(ret == 0, "expected ERROR_SUCCESS got %d\n", ret);
    FUNC3(szDest[0] == 0, "szDest[0] not 0\n");

    szDest[0] = 'A';
    ret = FUNC5(szDest, 0, szLongText, FUNC0(szLongText));
    FUNC3(ret == ERANGE || ret == EINVAL, "expected ERANGE/EINVAL got %d\n", ret);
    FUNC3(szDest[0] == 0 || ret == EINVAL, "szDest[0] not 0\n");

    ret = FUNC5(szDest, 18, szLongText, FUNC0(szLongText));
    FUNC3(ret == 0, "expected 0 got %d\n", ret);
    FUNC3(FUNC1(szDest, szLongText) == 0, "szDest != szLongText\n");

    szDest[0] = 'A';
    ret = FUNC5(szDestShort, 8, szLongText, FUNC0(szLongText));
    FUNC3(ret == ERANGE || ret == EINVAL, "expected ERANGE/EINVAL got %d\n", ret);
    FUNC3(szDestShort[0] == 0, "szDestShort[0] not 0\n");

    szDest[0] = 'A';
    ret = FUNC5(szDest, 5, szLongText, -1);
    FUNC3(ret == STRUNCATE, "expected STRUNCATE got %d\n", ret);
    FUNC3(szDest[4] == 0, "szDest[4] not 0\n");
    FUNC3(!FUNC2(szDest, szLongText, 4*sizeof(WCHAR)), "szDest = %s\n", FUNC7(szDest));

    ret = FUNC5(NULL, 0, (void*)0xdeadbeef, 0);
    FUNC3(ret == 0, "ret = %d\n", ret);

    szDestShort[0] = '1';
    szDestShort[1] = 0;
    ret = FUNC5(szDestShort+1, 4, szDestShort, -1);
    FUNC3(ret == STRUNCATE, "expected ERROR_SUCCESS got %d\n", ret);
    FUNC3(szDestShort[0]=='1' && szDestShort[1]=='1' && szDestShort[2]=='1' && szDestShort[3]=='1',
            "szDestShort = %s\n", FUNC7(szDestShort));
}