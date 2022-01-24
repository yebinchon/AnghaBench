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
typedef  int /*<<< orphan*/  lb ;
typedef  int /*<<< orphan*/  la ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int DNS_LABEL_MAX ; 
 int FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (char const*,char const**,char*,int) ; 
 int FUNC4 (char const*) ; 

int FUNC5(const char *a, const char *b) {
        const char *x, *y;
        int r, q;

        FUNC2(a);
        FUNC2(b);

        x = a + FUNC4(a);
        y = b + FUNC4(b);

        for (;;) {
                char la[DNS_LABEL_MAX], lb[DNS_LABEL_MAX];

                if (x == NULL && y == NULL)
                        return 0;

                r = FUNC3(a, &x, la, sizeof(la));
                q = FUNC3(b, &y, lb, sizeof(lb));
                if (r < 0 || q < 0)
                        return FUNC0(r, q);

                r = FUNC1(la, r, lb, q);
                if (r != 0)
                        return r;
        }
}