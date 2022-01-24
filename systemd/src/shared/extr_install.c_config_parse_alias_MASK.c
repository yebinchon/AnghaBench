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
typedef  int /*<<< orphan*/  UnitType ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,unsigned int,char const*,unsigned int,char const*,int,char const*,void*,void*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
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

        UnitType type;

        FUNC0(unit);
        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);

        type = FUNC3(unit);
        if (!FUNC4(type))
                return FUNC2(unit, LOG_WARNING, filename, line, 0,
                                  "Alias= is not allowed for %s units, ignoring.",
                                  FUNC5(type));

        return FUNC1(unit, filename, line, section, section_line,
                                 lvalue, ltype, rvalue, data, userdata);
}