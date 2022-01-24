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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* error ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

off_t FUNC9(FILE *fp) {
    long argc;
    off_t pos = 0;
    int i, multi = 0;
    char *str;

    while(1) {
        if (!multi) pos = FUNC2(fp);
        if (!FUNC4(fp, &argc)) break;

        for (i = 0; i < argc; i++) {
            if (!FUNC5(fp,&str)) break;
            if (i == 0) {
                if (FUNC6(str, "multi") == 0) {
                    if (multi++) {
                        FUNC0("Unexpected MULTI");
                        break;
                    }
                } else if (FUNC6(str, "exec") == 0) {
                    if (--multi) {
                        FUNC0("Unexpected EXEC");
                        break;
                    }
                }
            }
            FUNC8(str);
        }

        /* Stop if the loop did not finish */
        if (i < argc) {
            if (str) FUNC8(str);
            break;
        }
    }

    if (FUNC1(fp) && multi && FUNC7(error) == 0) {
        FUNC0("Reached EOF before reading EXEC for MULTI");
    }
    if (FUNC7(error) > 0) {
        FUNC3("%s\n", error);
    }
    return pos;
}