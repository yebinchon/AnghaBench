#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ uid_range; void* uid_shift; void* userns_mode; } ;
typedef  TYPE_1__ Settings ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 void* UID_INVALID ; 
 scalar_t__ FUNC0 (int) ; 
 void* USER_NAMESPACE_FIXED ; 
 void* USER_NAMESPACE_NO ; 
 void* USER_NAMESPACE_PICK ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,scalar_t__*) ; 
 int FUNC5 (char const*,scalar_t__*) ; 
 char* FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 char* FUNC8 (char const*,int) ; 

int FUNC9(
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

        Settings *settings = data;
        int r;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);

        r = FUNC3(rvalue);
        if (r == 0) {
                /* no: User namespacing off */
                settings->userns_mode = USER_NAMESPACE_NO;
                settings->uid_shift = UID_INVALID;
                settings->uid_range = FUNC0(0x10000);
        } else if (r > 0) {
                /* yes: User namespacing on, UID range is read from root dir */
                settings->userns_mode = USER_NAMESPACE_FIXED;
                settings->uid_shift = UID_INVALID;
                settings->uid_range = FUNC0(0x10000);
        } else if (FUNC7(rvalue, "pick")) {
                /* pick: User namespacing on, UID range is picked randomly */
                settings->userns_mode = USER_NAMESPACE_PICK;
                settings->uid_shift = UID_INVALID;
                settings->uid_range = FUNC0(0x10000);
        } else {
                const char *range, *shift;
                uid_t sh, rn;

                /* anything else: User namespacing on, UID range is explicitly configured */

                range = FUNC6(rvalue, ':');
                if (range) {
                        shift = FUNC8(rvalue, range - rvalue);
                        range++;

                        r = FUNC5(range, &rn);
                        if (r < 0 || rn <= 0) {
                                FUNC2(unit, LOG_ERR, filename, line, r, "UID/GID range invalid, ignoring: %s", range);
                                return 0;
                        }
                } else {
                        shift = rvalue;
                        rn = FUNC0(0x10000);
                }

                r = FUNC4(shift, &sh);
                if (r < 0) {
                        FUNC2(unit, LOG_ERR, filename, line, r, "UID/GID shift invalid, ignoring: %s", range);
                        return 0;
                }

                settings->userns_mode = USER_NAMESPACE_FIXED;
                settings->uid_shift = sh;
                settings->uid_range = rn;
        }

        return 0;
}