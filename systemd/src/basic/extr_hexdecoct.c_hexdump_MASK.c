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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int const) ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC5(FILE *f, const void *p, size_t s) {
        const uint8_t *b = p;
        unsigned n = 0;

        FUNC0(b || s == 0);

        if (!f)
                f = stdout;

        while (s > 0) {
                size_t i;

                FUNC1(f, "%04x  ", n);

                for (i = 0; i < 16; i++) {

                        if (i >= s)
                                FUNC3("   ", f);
                        else
                                FUNC1(f, "%02x ", b[i]);

                        if (i == 7)
                                FUNC2(' ', f);
                }

                FUNC2(' ', f);

                for (i = 0; i < 16; i++) {

                        if (i >= s)
                                FUNC2(' ', f);
                        else
                                FUNC2(FUNC4(b[i]) ? (char) b[i] : '.', f);
                }

                FUNC2('\n', f);

                if (s < 16)
                        break;

                n += 16;
                b += 16;
                s -= 16;
        }
}