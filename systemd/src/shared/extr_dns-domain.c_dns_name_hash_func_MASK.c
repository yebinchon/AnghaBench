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
struct siphash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_LABEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const**,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct siphash*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct siphash*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct siphash*) ; 

void FUNC6(const char *p, struct siphash *state) {
        int r;

        FUNC1(p);

        for (;;) {
                char label[DNS_LABEL_MAX+1];

                r = FUNC2(&p, label, sizeof label, 0);
                if (r < 0)
                        break;
                if (r == 0)
                        break;

                FUNC0(label, r);
                FUNC3(label, r, state);
                FUNC4(0, state); /* make sure foobar and foo.bar result in different hashes */
        }

        /* enforce that all names are terminated by the empty label */
        FUNC5("", state);
}