#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct CEvent {void* data; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * pipefd; } ;
typedef  TYPE_1__ CEventManager ;

/* Variables and functions */
 scalar_t__ CEVENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC4 (CEventManager *manager, uint32_t id,
                          void *data)
{
    FUNC1 (&manager->mutex);

    struct CEvent cevent;
    char *buf = (char *) &cevent;

    cevent.id = id;
    cevent.data = data;
    if (FUNC3(manager->pipefd[1], buf, CEVENT_SIZE) != CEVENT_SIZE) {
        FUNC0 ("add event error\n");
    }

    FUNC2 (&manager->mutex);
}