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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int enabled; scalar_t__ threshold_bytes; } ;
typedef  TYPE_1__ JournalCompressOptions ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,...) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,int,scalar_t__*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        JournalCompressOptions* compress = data;
        int r;

        if (FUNC0(rvalue)) {
                compress->enabled = true;
                compress->threshold_bytes = (uint64_t) -1;
        } else if (FUNC4(rvalue, "1")) {
                FUNC1(unit, LOG_WARNING, filename, line, 0,
                           "Compress= ambiguously specified as 1, enabling compression with default threshold");
                compress->enabled = true;
        } else if (FUNC4(rvalue, "0")) {
                FUNC1(unit, LOG_WARNING, filename, line, 0,
                           "Compress= ambiguously specified as 0, disabling compression");
                compress->enabled = false;
        } else {
                r = FUNC2(rvalue);
                if (r < 0) {
                        r = FUNC3(rvalue, 1024, &compress->threshold_bytes);
                        if (r < 0)
                                FUNC1(unit, LOG_ERR, filename, line, r,
                                           "Failed to parse Compress= value, ignoring: %s", rvalue);
                        else
                                compress->enabled = true;
                } else
                        compress->enabled = r;
        }

        return 0;
}