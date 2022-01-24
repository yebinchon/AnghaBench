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
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int JsonFormatFlags ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int JSON_FORMAT_COLOR ; 
 int JSON_FORMAT_COLOR_AUTO ; 
 int JSON_FORMAT_NEWLINE ; 
 int JSON_FORMAT_PRETTY ; 
 int JSON_FORMAT_SEQ ; 
 int JSON_FORMAT_SSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC5(JsonVariant *v, JsonFormatFlags flags, FILE *f, const char *prefix) {
        if (!v)
                return;

        if (!f)
                f = stdout;

        FUNC4(f, v, flags, false);

        if (((flags & (JSON_FORMAT_COLOR_AUTO|JSON_FORMAT_COLOR)) == JSON_FORMAT_COLOR_AUTO) && FUNC0())
                flags |= JSON_FORMAT_COLOR;

        if (flags & JSON_FORMAT_SSE)
                FUNC2("data: ", f);
        if (flags & JSON_FORMAT_SEQ)
                FUNC1('\x1e', f); /* ASCII Record Separator */

        FUNC3(f, v, flags, prefix);

        if (flags & (JSON_FORMAT_PRETTY|JSON_FORMAT_SEQ|JSON_FORMAT_SSE|JSON_FORMAT_NEWLINE))
                FUNC1('\n', f);
        if (flags & JSON_FORMAT_SSE)
                FUNC1('\n', f); /* In case of SSE add a second newline */
}