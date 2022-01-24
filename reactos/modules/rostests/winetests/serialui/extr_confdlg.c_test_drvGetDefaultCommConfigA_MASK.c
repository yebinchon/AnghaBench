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
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  COMMCONFIG ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ ERROR_BADKEY ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * com1A ; 
 int /*<<< orphan*/ * emptyA ; 
 char* fmt_comA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  str_colonA ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    COMMCONFIG  pCC[3];
    CHAR        bufferA[16];
    DWORD       i;
    DWORD       res;
    DWORD       len;


    /* off by one: one byte smaller */
    i   = sizeof(COMMCONFIG);
    len = sizeof(COMMCONFIG) -1;
    FUNC2(pCC, sizeof(pCC));
    FUNC1(0xdeadbeef);
    res = FUNC5(com1A, pCC, &len);
    if (res == ERROR_CALL_NOT_IMPLEMENTED) {
        /* NT does not implement the ANSI API */
        FUNC7("*A not implemented\n");
        return;
    }
    FUNC4( (res == ERROR_INSUFFICIENT_BUFFER) && (len >= i),
        "returned %u with %u and %u (expected "
        "ERROR_INSUFFICIENT_BUFFER and '>= %u')\n", res, FUNC0(), len, i);

    /* test ports "com0" - "com10" */
    for (i = 0; i < 11 ; i++) {
        FUNC6(bufferA, fmt_comA, i);
        len = sizeof(pCC);
        FUNC2(pCC, sizeof(pCC));
        FUNC1(0xdeadbeef);
        res = FUNC5(bufferA, pCC, &len);
        if (i == 0) {
            FUNC4( res == ERROR_BADKEY,
                "returned %u with %u and %u for %s (expected "
                "ERROR_BADKEY)\n", res, FUNC0(), len, bufferA);
        }
        else
        {
            FUNC4((res == ERROR_SUCCESS) || (res == ERROR_BADKEY),
               "returned %u with %u and %u for %s (expected ERROR_SUCCESS or "
               "ERROR_BADKEY)\n", res, FUNC0(), len, bufferA);
        }

        /* a name with a colon is invalid */
        if (res == ERROR_SUCCESS) {
            FUNC3(bufferA, str_colonA);
            len = sizeof(pCC);
            FUNC2(pCC, sizeof(pCC));
            res = FUNC5(bufferA, pCC, &len);
            FUNC4( res == ERROR_BADKEY,
                "returned %u with %u and %u for %s (expected '0' with "
                "ERROR_BADKEY)\n", res, FUNC0(), len, bufferA);
        }
    }


    /* an empty String is not allowed */
    len = sizeof(pCC);
    FUNC2(pCC, sizeof(pCC));
    FUNC1(0xdeadbeef);
    res = FUNC5(emptyA, pCC, &len);
    FUNC4( res == ERROR_BADKEY,
        "returned %u with %u and %u for %s (expected ERROR_BADKEY)\n",
        res, FUNC0(), len, emptyA);

    /* some NULL checks */
    len = sizeof(pCC);
    FUNC2(pCC, sizeof(pCC));
    FUNC1(0xdeadbeef);
    res = FUNC5(NULL, pCC, &len);
    FUNC4( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u and %u for NULL (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC0(), len);


    len = sizeof(pCC);
    FUNC1(0xdeadbeef);
    res = FUNC5(com1A, NULL, &len);
    FUNC4( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u and %u (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC0(), len);


    FUNC1(0xdeadbeef);
    res = FUNC5(com1A, pCC, NULL);
    FUNC4( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC0());
}