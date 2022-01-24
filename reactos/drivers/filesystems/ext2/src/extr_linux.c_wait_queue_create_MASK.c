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
struct __wait_queue {int /*<<< orphan*/  event; int /*<<< orphan*/  task_list; void* private; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SynchronizationEvent ; 
 int /*<<< orphan*/  WQ_FLAG_AUTO_REMOVAL ; 
 struct __wait_queue* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct __wait_queue*,int /*<<< orphan*/ ,int) ; 

struct __wait_queue *
FUNC5()
{
    struct __wait_queue * wait = NULL;
    wait = FUNC3(sizeof(struct __wait_queue), GFP_KERNEL);
    if (!wait) {
        return NULL;
    }

    FUNC4(wait, 0, sizeof(struct __wait_queue));
    wait->flags = WQ_FLAG_AUTO_REMOVAL;
    wait->private = (void *)FUNC1();
    FUNC0(&wait->task_list);
    FUNC2(&(wait->event),
                      SynchronizationEvent,
                      FALSE);

    return wait;
}