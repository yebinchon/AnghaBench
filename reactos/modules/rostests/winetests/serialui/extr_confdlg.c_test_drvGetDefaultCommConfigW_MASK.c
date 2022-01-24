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
typedef  int /*<<< orphan*/  pCC ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  COMMCONFIG ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_BADKEY ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * com1W ; 
 int /*<<< orphan*/  emptyA ; 
 int /*<<< orphan*/ * emptyW ; 
 char* fmt_comA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  str_colonA ; 
 int /*<<< orphan*/  str_colonW ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    COMMCONFIG  pCC[3];
    WCHAR       bufferW[16];
    CHAR        bufferA[16];
    DWORD       i;
    DWORD       res;
    DWORD       len;


    /* off by one: one byte smaller */
    i   = sizeof(COMMCONFIG);
    len = sizeof(COMMCONFIG) -1;
    FUNC4(pCC, sizeof(pCC));
    FUNC3(0xdeadbeef);
    res = FUNC8(com1W, pCC, &len);
    if (res == ERROR_CALL_NOT_IMPLEMENTED) {
        FUNC10("*W not implemented\n");
        return;
    }
    FUNC7( (res == ERROR_INSUFFICIENT_BUFFER) && (len >= i),
        "returned %u with %u and %u (expected "
        "ERROR_INSUFFICIENT_BUFFER and '>= %u')\n", res, FUNC1(), len, i);

    /* test ports "com0" - "com10" */
    for (i = 0; i < 11 ; i++) {
        FUNC9(bufferA, fmt_comA, i);
        FUNC2(CP_ACP, 0, bufferA, -1, bufferW, FUNC0(bufferW));
        len = sizeof(pCC);
        FUNC4(pCC, sizeof(pCC));
        FUNC3(0xdeadbeef);
        res = FUNC8(bufferW, pCC, &len);
        if (i == 0) {
            FUNC7( res == ERROR_BADKEY,
                "returned %u with %u and %u for %s (expected "
                "ERROR_BADKEY)\n", res, FUNC1(), len, bufferA);
        }
        else
        {
            FUNC7((res == ERROR_SUCCESS) || (res == ERROR_BADKEY),
               "returned %u with %u and %u for %s (expected ERROR_SUCCESS or "
               "ERROR_BADKEY)\n", res, FUNC1(), len, bufferA);
        }

        /* a name with a colon is invalid */
        if (res == ERROR_SUCCESS) {
            FUNC5(bufferA, str_colonA);
            FUNC6(bufferW, str_colonW);
            len = sizeof(pCC);
            FUNC4(pCC, sizeof(pCC));
            res = FUNC8(bufferW, pCC, &len);
            FUNC7( res == ERROR_BADKEY,
                "returned %u with %u and %u for %s (expected '0' with "
                "ERROR_BADKEY)\n", res, FUNC1(), len, bufferA);
        }
    }

    /* an empty String is not allowed */
    len = sizeof(pCC);
    FUNC4(pCC, sizeof(pCC));
    FUNC3(0xdeadbeef);
    res = FUNC8(emptyW, pCC, &len);
    FUNC7( res == ERROR_BADKEY,
        "returned %u with %u and %u for %s (expected ERROR_BADKEY)\n",
        res, FUNC1(), len, emptyA);

    /* some NULL checks */
    len = sizeof(pCC);
    FUNC4(pCC, sizeof(pCC));
    FUNC3(0xdeadbeef);
    res = FUNC8(NULL, pCC, &len);
    FUNC7( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u and %u for NULL (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC1(), len);


    len = sizeof(pCC);
    FUNC3(0xdeadbeef);
    res = FUNC8(com1W, NULL, &len);
    FUNC7( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u and %u (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC1(), len);


    FUNC3(0xdeadbeef);
    res = FUNC8(com1W, pCC, NULL);
    FUNC7( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());

}