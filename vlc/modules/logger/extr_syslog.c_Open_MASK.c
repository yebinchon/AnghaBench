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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_logger_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ default_ident ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 struct vlc_logger_operations const ops ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static const struct vlc_logger_operations *FUNC6(vlc_object_t *obj,
                                                void **restrict sysp)
{
    if (!FUNC3(obj, "syslog"))
        return NULL;

    char *ident = FUNC5(obj, "syslog-ident");
    if (ident == NULL)
        ident = (char *)default_ident;
    *sysp = ident;

    /* Open log */
    int facility = FUNC4(obj, "syslog-facility");

    FUNC1(ident, LOG_PID | LOG_NDELAY, facility);

    /* Set priority filter */
    int mask = FUNC0(LOG_ERR) | FUNC0(LOG_WARNING) | FUNC0(LOG_INFO);
    if (FUNC3(obj, "syslog-debug"))
        mask |= FUNC0(LOG_DEBUG);

    FUNC2(mask);

    return &ops;
}