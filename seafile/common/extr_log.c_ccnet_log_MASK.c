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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  gpointer ;
typedef  char gchar ;
typedef  scalar_t__ GLogLevelFlags ;

/* Variables and functions */
 scalar_t__ ccnet_log_level ; 
 scalar_t__ enable_syslog ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct tm* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * logfp ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 
 int FUNC6 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC9 (const gchar *log_domain, GLogLevelFlags log_level,
             const gchar *message,    gpointer user_data)
{
    time_t t;
    struct tm *tm;
    char buf[1024];
    int len;

    if (log_level > ccnet_log_level)
        return;

    t = FUNC8(NULL);
    tm = FUNC4(&t);
    len = FUNC6 (buf, 1024, "[%x %X] ", tm);
    FUNC2 (len < 1024);
    if (logfp != NULL) {
        FUNC1 (buf, logfp);
        FUNC1 (message, logfp);
        FUNC0 (logfp);
    } else { // log file not available
        FUNC5("%s %s", buf, message);
    }

#ifndef WIN32
#ifdef SEAFILE_SERVER
    if (enable_syslog)
        syslog (get_syslog_level (log_level), "%s", message);
#endif
#endif
}