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
 int G_LOG_FLAG_FATAL ; 
 int G_LOG_FLAG_RECURSION ; 
 int /*<<< orphan*/  G_LOG_LEVEL_DEBUG ; 
 int /*<<< orphan*/  G_LOG_LEVEL_INFO ; 
 int G_LOG_LEVEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  ccnet_log ; 
 void* ccnet_log_level ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 void* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  logfile ; 
 int /*<<< orphan*/ * logfp ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seafile_log ; 
 void* seafile_log_level ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

int
FUNC7 (const char *_logfile, const char *ccnet_debug_level_str,
                  const char *seafile_debug_level_str)
{
    FUNC2 (NULL, G_LOG_LEVEL_MASK | G_LOG_FLAG_FATAL
                       | G_LOG_FLAG_RECURSION, seafile_log, NULL);
    FUNC2 ("Ccnet", G_LOG_LEVEL_MASK | G_LOG_FLAG_FATAL
                       | G_LOG_FLAG_RECURSION, ccnet_log, NULL);

    /* record all log message */
    ccnet_log_level = FUNC4(ccnet_debug_level_str, G_LOG_LEVEL_INFO);
    seafile_log_level = FUNC4(seafile_debug_level_str, G_LOG_LEVEL_DEBUG);

    if (FUNC6(_logfile, "-") == 0) {
        logfp = stdout;
        logfile = FUNC3 (_logfile);
    }
    else {
        logfile = FUNC0(_logfile);
        if ((logfp = FUNC1 (logfile, "a+")) == NULL) {
            FUNC5 ("Failed to open file %s\n", logfile);
            return -1;
        }
    }

    return 0;
}