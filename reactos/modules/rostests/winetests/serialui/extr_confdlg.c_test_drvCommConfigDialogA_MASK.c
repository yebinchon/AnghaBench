#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pCC ;
struct TYPE_5__ {int dwSize; } ;
typedef  int DWORD ;
typedef  TYPE_1__ COMMCONFIG ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int ERROR_BADKEY ; 
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * emptyA ; 
 char* fmt_comA ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC9(void)
{
    COMMCONFIG  pCC[3];
    CHAR        bufferA[16];
    DWORD       i;
    DWORD       res;
    DWORD       len;


    /* test ports "com1" - "com4" */
    for (i = 1; i < 5 ; i++) {
        FUNC6(bufferA, fmt_comA, i);
        len = sizeof(pCC);
        FUNC2(pCC, sizeof(pCC));
        FUNC1(0xdeadbeef);
        res = FUNC5(bufferA, pCC, &len);
        if (res == ERROR_CALL_NOT_IMPLEMENTED) {
            /* NT does not implement the ANSI API */
            FUNC8("*A not implemented\n");
            return;
        }

        if (res == ERROR_SUCCESS) {

            if (winetest_interactive) {
                FUNC1(0xdeadbeef);
                res = FUNC4(bufferA, NULL, pCC);
                /* OK: ERROR_SUCCESS,  Cancel: ERROR_CANCELLED */
                FUNC7("returned %u with %u for '%s'\n", res, FUNC0(), bufferA);
            }

            FUNC2(pCC, sizeof(pCC));
            FUNC1(0xdeadbeef);
            res = FUNC4(bufferA, NULL, pCC);
            FUNC3( res == ERROR_INSUFFICIENT_BUFFER,
                "returned %u with %u for '%s' (expected ERROR_INSUFFICIENT_BUFFER)\n",
                res, FUNC0(), bufferA);


            FUNC1(0xdeadbeef);
            res = FUNC4(bufferA, NULL, NULL);
            FUNC3( res == ERROR_INVALID_PARAMETER,
                "returned %u with %u for '%s' (expected ERROR_INVALID_PARAMETER)\n",
                res, FUNC0(), bufferA);
        }
    }


    FUNC2(pCC, sizeof(pCC));
    FUNC1(0xdeadbeef);
    res = FUNC4(emptyA, NULL, pCC);
    FUNC3( res == ERROR_INSUFFICIENT_BUFFER,
        "returned %u with %u (expected ERROR_INSUFFICIENT_BUFFER)\n",
        res, FUNC0());


    FUNC2(pCC, sizeof(pCC));
    pCC[0].dwSize = sizeof(COMMCONFIG);
    FUNC1(0xdeadbeef);
    res = FUNC4(emptyA, NULL, pCC);
    FUNC3( res == ERROR_BADKEY, "returned %u with %u (expected ERROR_BADKEY)\n",
        res, FUNC0());


    FUNC2(pCC, sizeof(pCC));
    FUNC1(0xdeadbeef);
    res = FUNC4(NULL, NULL, pCC);
    FUNC3( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC0());
}