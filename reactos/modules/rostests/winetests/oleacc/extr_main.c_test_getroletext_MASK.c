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
typedef  int /*<<< orphan*/  buff2W ;
typedef  int /*<<< orphan*/  buff2 ;
typedef  char WCHAR ;
typedef  int INT ;
typedef  char CHAR ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char*,int) ; 
 int FUNC3 (int,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int ROLE_SYSTEM_OUTLINEBUTTON ; 
 int ROLE_SYSTEM_TITLEBAR ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    INT ret, role;
    CHAR buf[2], *buff;
    WCHAR bufW[2], *buffW;

    /* wrong role number */
    ret = FUNC2(-1, NULL, 0);
    FUNC10(ret == 0, "GetRoleTextA doesn't return zero on wrong role number, got %d\n", ret);
    buf[0] = '*';
    ret = FUNC2(-1, buf, 2);
    FUNC10(ret == 0, "GetRoleTextA doesn't return zero on wrong role number, got %d\n", ret);
    FUNC10(buf[0] == 0, "GetRoleTextA doesn't return NULL char on wrong role number\n");
    buf[0] = '*';
    ret = FUNC2(-1, buf, 0);
    FUNC10(ret == 0, "GetRoleTextA doesn't return zero on wrong role number, got %d\n", ret);
    FUNC10(buf[0] == '*', "GetRoleTextA modified buffer on wrong role number\n");

    ret = FUNC3(-1, NULL, 0);
    FUNC10(ret == 0, "GetRoleTextW doesn't return zero on wrong role number, got %d\n", ret);
    bufW[0] = '*';
    ret = FUNC3(-1, bufW, 2);
    FUNC10(ret == 0, "GetRoleTextW doesn't return zero on wrong role number, got %d\n", ret);
    FUNC10(bufW[0] == '\0', "GetRoleTextW doesn't return NULL char on wrong role number\n");
    bufW[0] = '*';
    ret = FUNC3(-1, bufW, 0);
    FUNC10(ret == 0, "GetRoleTextW doesn't return zero on wrong role number, got %d\n", ret);

    /* zero role number - not documented */
    ret = FUNC2(0, NULL, 0);
    FUNC10(ret > 0, "GetRoleTextA doesn't return (>0) for zero role number, got %d\n", ret);
    ret = FUNC3(0, NULL, 0);
    FUNC10(ret > 0, "GetRoleTextW doesn't return (>0) for zero role number, got %d\n", ret);

    /* NULL buffer, return length */
    ret = FUNC2(ROLE_SYSTEM_TITLEBAR, NULL, 0);
    FUNC10(ret > 0, "GetRoleTextA doesn't return length on NULL buffer, got %d\n", ret);
    ret = FUNC2(ROLE_SYSTEM_TITLEBAR, NULL, 1);
    FUNC10(ret > 0, "GetRoleTextA doesn't return length on NULL buffer, got %d\n", ret);
    ret = FUNC3(ROLE_SYSTEM_TITLEBAR, NULL, 0);
    FUNC10(ret > 0, "GetRoleTextW doesn't return length on NULL buffer, got %d\n", ret);
    ret = FUNC3(ROLE_SYSTEM_TITLEBAR, NULL, 1);
    FUNC10(ret > 0, "GetRoleTextW doesn't return length on NULL buffer, got %d\n", ret);

    /* use a smaller buffer */
    bufW[0] = '*';
    ret = FUNC2(ROLE_SYSTEM_TITLEBAR, buf, 0);
    FUNC10(!ret, "GetRoleTextA doesn't return 0, got %d\n", ret);
    FUNC10(buf[0] == '*', "GetRoleTextA modified buffer\n");
    buffW = NULL;
    ret = FUNC3(ROLE_SYSTEM_TITLEBAR, (WCHAR*)&buffW, 0);
    FUNC10(ret, "GetRoleTextW doesn't return length\n");
    FUNC10(buffW != NULL, "GetRoleTextW doesn't modify buffer\n");
    buf[0] = '*';
    ret = FUNC2(ROLE_SYSTEM_TITLEBAR, buf, 1);
    FUNC10(ret == 0, "GetRoleTextA returned wrong length\n");
    FUNC10(buf[0] == '\0', "GetRoleTextA returned not zero-length buffer\n");
    buf[0] = '*';
    ret = FUNC2(ROLE_SYSTEM_TITLEBAR, buf, 2);
    FUNC10(!ret, "GetRoleTextA returned wrong length, got %d, expected 0\n", ret);
    FUNC10(!buf[0] || FUNC6(buf[0]!='*') /* WinXP */,
            "GetRoleTextA returned not zero-length buffer : (%c)\n", buf[0]);

    bufW[0] = '*';
    ret = FUNC3(ROLE_SYSTEM_TITLEBAR, bufW, 1);
    FUNC10(ret == 0, "GetRoleTextW returned wrong length, got %d, expected 1\n", ret);
    FUNC10(bufW[0] == '\0', "GetRoleTextW returned not zero-length buffer\n");
    bufW[1] = '*';
    ret = FUNC3(ROLE_SYSTEM_TITLEBAR, bufW, 2);
    FUNC10(ret == 1, "GetRoleTextW returned wrong length, got %d, expected 1\n", ret);
    FUNC10(bufW[1] == '\0', "GetRoleTextW returned not zero-length buffer\n");

    /* use bigger buffer */
    ret = FUNC2(ROLE_SYSTEM_TITLEBAR, NULL, 0);
    buff = FUNC4(FUNC1(), 0, 2*ret);
    buff[2*ret-1] = '*';
    ret = FUNC2(ROLE_SYSTEM_TITLEBAR, buff, 2*ret);
    FUNC10(buff[2*ret-1] == '*', "GetRoleTextA shouldn't modify this part of buffer\n");
    FUNC5(FUNC1(), 0, buff);

    ret = FUNC3(ROLE_SYSTEM_TITLEBAR, NULL, 0);
    buffW = FUNC4(FUNC1(), 0, 2*ret*sizeof(WCHAR));
    buffW[2*ret-1] = '*';
    ret = FUNC3(ROLE_SYSTEM_TITLEBAR, buffW, 2*ret);
    FUNC10(buffW[2*ret-1] == '*', "GetRoleTextW shouldn't modify this part of buffer\n");
    FUNC5(FUNC1(), 0, buffW);

    /* check returned length for all roles */
    for(role = 0; role <= ROLE_SYSTEM_OUTLINEBUTTON; role++){
        CHAR buff2[100];
        WCHAR buff2W[100];

        /* NT4 and W2K don't clear the buffer on a nonexistent role in the A-call */
        FUNC9(buff2, 0, sizeof(buff2));

        ret = FUNC2(role, NULL, 0);
        FUNC10(ret > 0, "Expected the role to be present\n");

        FUNC2(role, buff2, sizeof(buff2));
        FUNC10(ret == FUNC7(buff2),
           "GetRoleTextA: returned length doesn't match returned buffer for role %d\n", role);

        /* Win98 and WinMe don't clear the buffer on a nonexistent role in the W-call */
        FUNC9(buff2W, 0, sizeof(buff2W));

        ret = FUNC3(role, NULL, 0);
        FUNC3(role, buff2W, FUNC0(buff2W));
        FUNC10(ret == FUNC8(buff2W),
           "GetRoleTextW: returned length doesn't match returned buffer for role %d\n", role);
    }
}