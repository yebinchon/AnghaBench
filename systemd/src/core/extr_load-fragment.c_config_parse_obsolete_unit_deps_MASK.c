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
 int /*<<< orphan*/  LOG_WARNING ; 
 int FUNC0 (char const*,char const*,unsigned int,char const*,unsigned int,char const*,int,char const*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

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

        FUNC1(unit, LOG_WARNING, filename, line, 0,
                   "Unit dependency type %s= is obsolete, replacing by %s=, please update your unit file", lvalue, FUNC2(ltype));

        return FUNC0(unit, filename, line, section, section_line, lvalue, ltype, rvalue, data, userdata);
}