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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int dwSize; } ;
typedef  int DWORD ;
typedef  TYPE_1__ COMMCONFIG ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int ERROR_BADKEY ; 
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * emptyW ; 
 char* fmt_comA ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC11(void)
{
    COMMCONFIG  pCC[3];
    CHAR        bufferA[16];
    WCHAR       bufferW[16];
    DWORD       i;
    DWORD       res;
    DWORD       len;


    /* test ports "com1" - "com4" */
    for (i = 1; i < 5 ; i++) {
        FUNC8(bufferA, fmt_comA, i);
        FUNC2(CP_ACP, 0, bufferA, -1, bufferW, FUNC0(bufferW));
        len = sizeof(pCC);
        FUNC4(pCC, sizeof(pCC));
        FUNC3(0xdeadbeef);
        res = FUNC7(bufferW, pCC, &len);
        if (res == ERROR_CALL_NOT_IMPLEMENTED) {
            FUNC10("*W not implemented\n");
            return;
        }

        if (res == ERROR_SUCCESS) {

            if (winetest_interactive) {
                FUNC3(0xdeadbeef);
                res = FUNC6(bufferW, NULL, pCC);
                /* OK: ERROR_SUCCESS,  Cancel: ERROR_CANCELLED */
                FUNC9("returned %u with %u for '%s'\n", res, FUNC1(), bufferA);
            }

            FUNC4(pCC, sizeof(pCC));
            FUNC3(0xdeadbeef);
            res = FUNC6(bufferW, NULL, pCC);
            FUNC5( res == ERROR_INSUFFICIENT_BUFFER,
                "returned %u with %u for '%s' (expected ERROR_INSUFFICIENT_BUFFER)\n",
                res, FUNC1(), bufferA);

            FUNC3(0xdeadbeef);
            res = FUNC6(bufferW, NULL, NULL);
            FUNC5( res == ERROR_INVALID_PARAMETER,
                "returned %u with %u for '%s' (expected ERROR_INVALID_PARAMETER)\n",
                res, FUNC1(), bufferA);
        }
    }


    FUNC4(pCC, sizeof(pCC));
    FUNC3(0xdeadbeef);
    res = FUNC6(emptyW, NULL, pCC);
    FUNC5( res == ERROR_INSUFFICIENT_BUFFER,
        "returned %u with %u (expected ERROR_INSUFFICIENT_BUFFER)\n",
        res, FUNC1());


    FUNC4(pCC, sizeof(pCC));
    pCC[0].dwSize = sizeof(COMMCONFIG);
    FUNC3(0xdeadbeef);
    res = FUNC6(emptyW, NULL, pCC);
    FUNC5( res == ERROR_BADKEY, "returned %u with %u (expected ERROR_BADKEY)\n",
        res, FUNC1());


    FUNC4(pCC, sizeof(pCC));
    FUNC3(0xdeadbeef);
    res = FUNC6(NULL, NULL, pCC);
    FUNC5( res == ERROR_INVALID_PARAMETER,
        "returned %u with %u (expected ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());
}