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
struct vlc_logger {int /*<<< orphan*/ * ops; } ;
struct vlc_logger_switch {struct vlc_logger frontend; int /*<<< orphan*/  lock; int /*<<< orphan*/ * backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  discard_log ; 
 struct vlc_logger_switch* FUNC0 (int) ; 
 int /*<<< orphan*/  switch_ops ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vlc_logger *FUNC3(void)
{
    struct vlc_logger_switch *logswitch = FUNC0(sizeof (*logswitch));
    if (FUNC1(logswitch == NULL))
        return NULL;

    logswitch->frontend.ops = &switch_ops;
    logswitch->backend = &discard_log;
    FUNC2(&logswitch->lock);
    return &logswitch->frontend;
}