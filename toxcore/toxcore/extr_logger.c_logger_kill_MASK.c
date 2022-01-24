#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  log_file; struct TYPE_4__* msg; struct TYPE_4__* posstr; struct TYPE_4__* tstr; struct TYPE_4__* id; } ;
typedef  TYPE_1__ Logger ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(Logger *log)
{
#ifndef TOX_LOGGER /* Disabled */
    return;
#endif

    if (!log)
        return;

    FUNC4(log->mutex);
    FUNC1(log->id);
    FUNC1(log->tstr);
    FUNC1(log->posstr);
    FUNC1(log->msg);

    if (FUNC0(log->log_file) != 0)
        FUNC2("Could not close log file");

    FUNC5(log->mutex);
    FUNC3(log->mutex);

    FUNC1(log);
}