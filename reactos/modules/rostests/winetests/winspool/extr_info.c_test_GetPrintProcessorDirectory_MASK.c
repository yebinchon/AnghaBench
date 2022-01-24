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
typedef  char* LPBYTE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  ERROR_INVALID_ENVIRONMENT ; 
 int /*<<< orphan*/  ERROR_INVALID_LEVEL ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_INVALID_USER_BUFFER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RPC_S_INVALID_NET_ADDR ; 
 int /*<<< orphan*/  RPC_S_SERVER_UNAVAILABLE ; 
 int /*<<< orphan*/  RPC_X_NULL_REF_POINTER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/ * empty ; 
 int /*<<< orphan*/ * env_win9x_case ; 
 int /*<<< orphan*/ * env_x86 ; 
 int /*<<< orphan*/ * invalid_env ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/ * server_does_not_exist ; 

__attribute__((used)) static void FUNC9(void)
{
    LPBYTE      buffer = NULL;
    DWORD       cbBuf = 0;
    DWORD       pcbNeeded = 0;
    BOOL        res;


    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, NULL, 1, NULL, 0, &cbBuf);
    if (FUNC7(res, FUNC0())) return;

    FUNC8( !res && (FUNC0() == ERROR_INSUFFICIENT_BUFFER),
        "returned %d with %d (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, FUNC0());

    buffer = FUNC3(FUNC2(), 0, cbBuf*2);
    if(buffer == NULL)  return;

    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, NULL, 1, buffer, cbBuf, &pcbNeeded);
    FUNC8(res, "returned %d with %d (expected '!= 0')\n", res, FUNC0());

    FUNC5(0xdeadbeef);
    buffer[0] = '\0';
    res = FUNC1(NULL, NULL, 1, buffer, cbBuf*2, &pcbNeeded);
    FUNC8(res, "returned %d with %d (expected '!= 0')\n", res, FUNC0());
 
    /* Buffer too small */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1( NULL, NULL, 1, buffer, cbBuf-1, &pcbNeeded);
    FUNC8( !res && (FUNC0() == ERROR_INSUFFICIENT_BUFFER),
        "returned %d with %d (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, FUNC0());

    if (0)
    {
    /* XPsp2: the program will crash here, when the spooler is not running  */
    /*        GetPrinterDriverDirectory has the same bug */
    pcbNeeded = 0;
    FUNC5(0xdeadbeef);
    res = FUNC1( NULL, NULL, 1, NULL, cbBuf, &pcbNeeded);
    /* NT: ERROR_INVALID_USER_BUFFER, 9x: res != 0  */
    FUNC8( (!res && (FUNC0() == ERROR_INVALID_USER_BUFFER)) ||
        FUNC6(res),
        "returned %d with %d (expected '0' with ERROR_INVALID_USER_BUFFER)\n",
        res, FUNC0());
    }

    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1( NULL, NULL, 1, buffer, cbBuf, NULL);
    /* w7 with deactivated spooler: ERROR_INVALID_PARAMETER,
       NT: RPC_X_NULL_REF_POINTER, 9x: res != 0  */
    FUNC8( !res && ((FUNC0() == RPC_X_NULL_REF_POINTER) ||
                 (FUNC0() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '0' with RPC_X_NULL_REF_POINTER "
        "or with ERROR_INVALID_PARAMETER)\n", res, FUNC0());

    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1( NULL, NULL, 1, NULL, cbBuf, NULL);
    /* w7 with deactivated spooler: ERROR_INVALID_PARAMETER,
       NT: RPC_X_NULL_REF_POINTER, 9x: res != 0  */
    FUNC8( !res && ((FUNC0() == RPC_X_NULL_REF_POINTER) ||
                 (FUNC0() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '0' with RPC_X_NULL_REF_POINTER "
        "or with ERROR_INVALID_PARAMETER)\n", res, FUNC0());

    /* with a valid buffer, but level is invalid */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, NULL, 0, buffer, cbBuf, &pcbNeeded);
    /* Level is ignored in win9x*/
    FUNC8( (!res && (FUNC0() == ERROR_INVALID_LEVEL)) ||
        FUNC6(res && buffer[0]),
        "returned %d with %d (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, FUNC0());

    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, NULL, 2, buffer, cbBuf, &pcbNeeded);
    /* Level is ignored on win9x*/
    FUNC8( (!res && (FUNC0() == ERROR_INVALID_LEVEL)) ||
        FUNC6(res && buffer[0]),
        "returned %d with %d (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, FUNC0());

    /* Empty environment is the same as the default environment */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, empty, 1, buffer, cbBuf*2, &pcbNeeded);
    FUNC8(res, "returned %d with %d (expected '!= 0')\n", res, FUNC0());

    /* "Windows 4.0" is valid for win9x and NT */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, env_win9x_case, 1, buffer, cbBuf*2, &pcbNeeded);
    FUNC8(res, "returned %d with %d (expected '!= 0')\n", res, FUNC0());


    /* "Windows NT x86" is invalid for win9x */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, env_x86, 1, buffer, cbBuf*2, &pcbNeeded);
    FUNC8( res || (FUNC0() == ERROR_INVALID_ENVIRONMENT), 
        "returned %d with %d (expected '!= 0' or '0' with "
        "ERROR_INVALID_ENVIRONMENT)\n", res, FUNC0());

    /* invalid on all systems */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(NULL, invalid_env, 1, buffer, cbBuf*2, &pcbNeeded);
    FUNC8( !res && (FUNC0() == ERROR_INVALID_ENVIRONMENT), 
        "returned %d with %d (expected '0' with ERROR_INVALID_ENVIRONMENT)\n",
        res, FUNC0());

    /* Empty servername is the same as the local computer */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(empty, NULL, 1, buffer, cbBuf*2, &pcbNeeded);
    FUNC8(res, "returned %d with %d (expected '!= 0')\n", res, FUNC0());

    /* invalid on all systems */
    buffer[0] = '\0';
    FUNC5(0xdeadbeef);
    res = FUNC1(server_does_not_exist, NULL, 1, buffer, cbBuf*2, &pcbNeeded);
    FUNC8( !res, "expected failure\n");
    FUNC8( FUNC0() == RPC_S_SERVER_UNAVAILABLE || /* NT */
        FUNC0() == ERROR_INVALID_PARAMETER ||  /* 9x */
        FUNC0() == RPC_S_INVALID_NET_ADDR,     /* Some Vista */
        "unexpected last error %d\n", FUNC0());

    FUNC4(FUNC2(), 0, buffer);
}