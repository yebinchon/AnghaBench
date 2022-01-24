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
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_ENVIRONMENT ; 
 scalar_t__ ERROR_INVALID_LEVEL ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_INVALID_USER_BUFFER ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*,int*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ RPC_X_NULL_REF_POINTER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/ * empty ; 
 int /*<<< orphan*/ * invalid_env ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    DWORD   res;
    LPBYTE  buffer;
    DWORD   cbBuf;
    DWORD   pcbNeeded;
    DWORD   pcReturned;


    cbBuf = 0xdeadbeef;
    pcReturned = 0xdeadbeef;
    FUNC5(0xdeadbeef);
    res = FUNC0(NULL, NULL, 1, NULL, 0, &cbBuf, &pcReturned);
    if (FUNC7(res, FUNC1())) return;

    if (res && !cbBuf) {
        FUNC9("No Printprocessor installed\n");
        return;
    }

    FUNC8((!res) && (FUNC1() == ERROR_INSUFFICIENT_BUFFER),
        "got %u with %u (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, FUNC1());

    buffer = FUNC3(FUNC2(), 0, cbBuf + 4);
    if (buffer == NULL)
        return;

    FUNC5(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = FUNC0(NULL, NULL, 1, buffer, cbBuf, &pcbNeeded, &pcReturned);
    FUNC8(res, "got %u with %u (expected '!=0')\n", res, FUNC1());
    /* validate the returned data here. */


    FUNC5(0xdeadbeef);
    pcReturned = 0xdeadbeef;
    pcbNeeded = 0xdeadbeef;
    res = FUNC0(NULL, NULL, 1, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
    FUNC8(res, "got %u with %u (expected '!=0')\n", res, FUNC1());

    FUNC5(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = FUNC0(NULL, NULL, 1, buffer, cbBuf-1, &pcbNeeded, &pcReturned);
    FUNC8( !res && (FUNC1() == ERROR_INSUFFICIENT_BUFFER),
        "got %u with %u (expected '0' with ERROR_INSUFFICIENT_BUFFER)\n",
        res, FUNC1());

    /* only level 1 is valid */
    if (0) {
        /* both tests crash on win98se */
        FUNC5(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        res = FUNC0(NULL, NULL, 0, buffer, cbBuf, &pcbNeeded, &pcReturned);
        FUNC8( !res && (FUNC1() == ERROR_INVALID_LEVEL),
            "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
            res, FUNC1());

        FUNC5(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        res = FUNC0(NULL, NULL, 2, buffer, cbBuf, &pcbNeeded, &pcReturned);
        FUNC8( !res && (FUNC1() == ERROR_INVALID_LEVEL),
            "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
            res, FUNC1());
    }

    /* an empty environment is ignored */
    FUNC5(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = FUNC0(NULL, empty, 1, buffer, cbBuf, &pcbNeeded, &pcReturned);
    FUNC8(res, "got %u with %u (expected '!=0')\n", res, FUNC1());

    /* the environment is checked */
    FUNC5(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    res = FUNC0(NULL, invalid_env, 1, buffer, cbBuf, &pcbNeeded, &pcReturned);
    /* NT5: ERROR_INVALID_ENVIRONMENT, NT4: res != 0, 9x: ERROR_INVALID_PARAMETER */
    FUNC8( FUNC6(res) || /* NT4 */
        (FUNC1() == ERROR_INVALID_ENVIRONMENT) ||
        (FUNC1() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_ENVIRONMENT or "
        "ERROR_INVALID_PARAMETER)\n", res, FUNC1());


    /* failure-Codes for NULL */
    if (0) {
        /* this test crashes on win98se */
        FUNC5(0xdeadbeef);
        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        res = FUNC0(NULL, NULL, 1, NULL, cbBuf, &pcbNeeded, &pcReturned);
        FUNC8( !res && (FUNC1() == ERROR_INVALID_USER_BUFFER) ,
            "got %u with %u (expected '0' with ERROR_INVALID_USER_BUFFER)\n",
            res, FUNC1());
    }

    FUNC5(0xdeadbeef);
    pcbNeeded = 0xdeadbeef;
    pcReturned = 0xdeadbeef;
    res = FUNC0(NULL, NULL, 1, buffer, cbBuf, NULL, &pcReturned);
    /* the NULL is ignored on win9x */
    FUNC8( FUNC6(res) || (!res && (FUNC1() == RPC_X_NULL_REF_POINTER)),
        "got %u with %u (expected '0' with RPC_X_NULL_REF_POINTER)\n",
        res, FUNC1());

    pcbNeeded = 0xdeadbeef;
    pcReturned = 0xdeadbeef;
    FUNC5(0xdeadbeef);
    res = FUNC0(NULL, NULL, 1, buffer, cbBuf, &pcbNeeded, NULL);
    /* the NULL is ignored on win9x */
    FUNC8( FUNC6(res) || (!res && (FUNC1() == RPC_X_NULL_REF_POINTER)),
        "got %u with %u (expected '0' with RPC_X_NULL_REF_POINTER)\n",
        res, FUNC1());

    FUNC4(FUNC2(), 0, buffer);

}