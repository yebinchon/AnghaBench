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

/* Variables and functions */
 int /*<<< orphan*/  NEWLINE ; 
 int /*<<< orphan*/  WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC5(const char *s, const char *header) {

        for (;;) {
                const char *v;

                v = FUNC1(s, header);
                if (v) {
                        v += FUNC4(v, WHITESPACE);
                        return FUNC3(v, FUNC2(v, NEWLINE));
                }

                if (!FUNC0(&s))
                        return NULL;
        }
}