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
typedef  int /*<<< orphan*/  sd_journal ;
typedef  int /*<<< orphan*/  Set ;
typedef  int /*<<< orphan*/  OutputMode ;
typedef  int OutputFlags ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* ANSI_HIGHLIGHT_RED ; 
 char* ANSI_NORMAL ; 
 int EBADMSG ; 
 int ENOENT ; 
 int OUTPUT_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(
                FILE *f,
                sd_journal *j,
                OutputMode mode,
                unsigned n_columns,
                OutputFlags flags,
                Set *output_fields,
                const size_t highlight[2]) {

        const void *data;
        size_t l;
        int r;
        const char *highlight_on = "", *highlight_off = "";

        FUNC0(*j);
        FUNC0(*f);

        if (flags & OUTPUT_COLOR) {
                highlight_on = ANSI_HIGHLIGHT_RED;
                highlight_off = ANSI_NORMAL;
        }

        FUNC6(j, 0);

        r = FUNC5(j, "MESSAGE", &data, &l);
        if (r == -EBADMSG) {
                FUNC3(r, "Skipping message we can't read: %m");
                return 0;
        }
        if (r < 0) {
                /* An entry without MESSAGE=? */
                if (r == -ENOENT)
                        return 0;

                return FUNC4(r, "Failed to get data: %m");
        }

        FUNC0(l >= 8);

        if (highlight && (flags & OUTPUT_COLOR)) {
                FUNC0(highlight[0] <= highlight[1]);
                FUNC0(highlight[1] <= l - 8);

                FUNC2((const char*) data + 8, 1, highlight[0], f);
                FUNC2(highlight_on, 1, FUNC7(highlight_on), f);
                FUNC2((const char*) data + 8 + highlight[0], 1, highlight[1] - highlight[0], f);
                FUNC2(highlight_off, 1, FUNC7(highlight_off), f);
                FUNC2((const char*) data + 8 + highlight[1], 1, l - 8 - highlight[1], f);
        } else
                FUNC2((const char*) data + 8, 1, l - 8, f);
        FUNC1('\n', f);

        return 0;
}