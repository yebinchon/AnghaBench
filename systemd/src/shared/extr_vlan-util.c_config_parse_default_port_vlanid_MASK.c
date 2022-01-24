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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,char const*,unsigned int,char const*,unsigned int,char const*,int,char const*,void*,void*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

int FUNC3(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {
        uint16_t *id = data;

        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC2(rvalue, "none")) {
                *id = 0;
                return 0;
        }

        return FUNC1(unit, filename, line, section, section_line,
                                   lvalue, ltype, rvalue, data, userdata);
}