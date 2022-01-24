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
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  buf_relative ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FORMAT_TIMESTAMP_MAX ; 
 int FORMAT_TIMESTAMP_RELATIVE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,scalar_t__) ; 
 int FUNC2 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 scalar_t__ FUNC5 (char const*,scalar_t__*) ; 
 char const* FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(const char *p) {
        usec_t t, q;
        char buf[FORMAT_TIMESTAMP_MAX], buf_relative[FORMAT_TIMESTAMP_RELATIVE_MAX];

        FUNC4("Test: %s", p);
        FUNC0(FUNC5(p, &t) >= 0);
        FUNC0(FUNC2(buf, sizeof(buf), t));
        FUNC4("\"%s\" → \"%s\"", p, buf);

        FUNC0(FUNC5(buf, &q) >= 0);
        if (q != t) {
                char tmp[FORMAT_TIMESTAMP_MAX];

                FUNC3("round-trip failed: \"%s\" → \"%s\"",
                          buf, FUNC2(tmp, sizeof(tmp), q));
        }
        FUNC0(q == t);

        FUNC0(FUNC1(buf_relative, sizeof(buf_relative), t));
        FUNC4("%s", FUNC6(buf_relative));
}