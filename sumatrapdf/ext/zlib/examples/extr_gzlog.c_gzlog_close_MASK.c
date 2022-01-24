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
struct log {int /*<<< orphan*/  id; struct log* path; } ;
typedef  struct log gzlog ;

/* Variables and functions */
 int /*<<< orphan*/  LOGID ; 
 int /*<<< orphan*/  FUNC0 (struct log*) ; 
 int /*<<< orphan*/  FUNC1 (struct log*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(gzlog *logd)
{
    struct log *log = logd;

    /* check arguments */
    if (log == NULL || FUNC2(log->id, LOGID))
        return -3;

    /* close the log file and release the lock */
    FUNC1(log);

    /* free structure and return */
    if (log->path != NULL)
        FUNC0(log->path);
    FUNC3(log->id, "bad");
    FUNC0(log);
    return 0;
}