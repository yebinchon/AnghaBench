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
typedef  int OutputFlags ;
typedef  char const FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const,char,char) ; 
 size_t JSON_THRESHOLD ; 
 int OUTPUT_SHOW_ALL ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t) ; 

void FUNC6(
                FILE *f,
                const char* p,
                size_t l,
                OutputFlags flags) {

        FUNC1(f);
        FUNC1(p);

        if (!(flags & OUTPUT_SHOW_ALL) && l >= JSON_THRESHOLD)
                FUNC4("null", f);

        else if (!(flags & OUTPUT_SHOW_ALL) && !FUNC5(p, l)) {
                bool not_first = false;

                FUNC4("[ ", f);

                while (l > 0) {
                        if (not_first)
                                FUNC2(f, ", %u", (uint8_t) *p);
                        else {
                                not_first = true;
                                FUNC2(f, "%u", (uint8_t) *p);
                        }

                        p++;
                        l--;
                }

                FUNC4(" ]", f);
        } else {
                FUNC3('"', f);

                while (l > 0) {
                        if (FUNC0(*p, '"', '\\')) {
                                FUNC3('\\', f);
                                FUNC3(*p, f);
                        } else if (*p == '\n')
                                FUNC4("\\n", f);
                        else if ((uint8_t) *p < ' ')
                                FUNC2(f, "\\u%04x", (uint8_t) *p);
                        else
                                FUNC3(*p, f);

                        p++;
                        l--;
                }

                FUNC3('"', f);
        }
}