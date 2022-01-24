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
typedef  int Disabled ;

/* Variables and functions */
#define  DISABLED_CONFIGURATION 130 
#define  DISABLED_EXPERIMENTAL 129 
#define  DISABLED_LEGACY 128 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC1(
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

        Disabled reason = ltype;

        switch(reason) {

        case DISABLED_CONFIGURATION:
                FUNC0(unit, LOG_DEBUG, filename, line, 0,
                           "Support for option %s= has been disabled at compile time and it is ignored", lvalue);
                break;

        case DISABLED_LEGACY:
                FUNC0(unit, LOG_INFO, filename, line, 0,
                           "Support for option %s= has been removed and it is ignored", lvalue);
                break;

        case DISABLED_EXPERIMENTAL:
                FUNC0(unit, LOG_INFO, filename, line, 0,
                           "Support for option %s= has not yet been enabled and it is ignored", lvalue);
                break;
        }

        return 0;
}