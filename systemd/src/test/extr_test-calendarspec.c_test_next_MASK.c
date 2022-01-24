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
typedef  int /*<<< orphan*/  CalendarSpec ;

/* Variables and functions */
 int ENOENT ; 
 int FORMAT_TIMESTAMP_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 char* FUNC5 (char*,int,scalar_t__) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (int) ; 
 char* FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(const char *input, const char *new_tz, usec_t after, usec_t expect) {
        CalendarSpec *c;
        usec_t u;
        char *old_tz;
        char buf[FORMAT_TIMESTAMP_MAX];
        int r;

        old_tz = FUNC6("TZ");
        if (old_tz)
                old_tz = FUNC9(old_tz);

        if (new_tz) {
                char *colon_tz;

                colon_tz = FUNC11(":", new_tz);
                FUNC1(FUNC8("TZ", colon_tz, 1) >= 0);
        } else
                FUNC1(FUNC13("TZ") >= 0);
        FUNC12();

        FUNC1(FUNC3(input, &c) >= 0);

        FUNC7("\"%s\"\n", input);

        u = after;
        r = FUNC4(c, after, &u);
        FUNC7("At: %s\n", r < 0 ? FUNC10(r) : FUNC5(buf, sizeof buf, u));
        if (expect != (usec_t)-1)
                FUNC1(r >= 0 && u == expect);
        else
                FUNC0(r == -ENOENT);

        FUNC2(c);

        if (old_tz)
                FUNC1(FUNC8("TZ", old_tz, 1) >= 0);
        else
                FUNC1(FUNC13("TZ") >= 0);
        FUNC12();
}