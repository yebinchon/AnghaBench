#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ zi_cmd; int zi_duration; scalar_t__ zi_timer; } ;
struct TYPE_7__ {TYPE_1__ zi_record; int /*<<< orphan*/ * zi_spa; } ;
typedef  TYPE_2__ inject_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ZINJECT_IGNORED_WRITES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  inject_handlers ; 
 int /*<<< orphan*/  inject_lock ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ zio_injection_enabled ; 

void
FUNC8(spa_t *spa)
{
	inject_handler_t *handler;

	if (zio_injection_enabled == 0)
		return;

	FUNC5(&inject_lock, RW_READER);

	for (handler = FUNC3(&inject_handlers); handler != NULL;
	    handler = FUNC4(&inject_handlers, handler)) {

		if (spa != handler->zi_spa ||
		    handler->zi_record.zi_cmd != ZINJECT_IGNORED_WRITES)
			continue;

		if (handler->zi_record.zi_duration > 0) {
			FUNC0(handler->zi_record.zi_timer == 0 ||
			    FUNC2(
			    (int64_t)handler->zi_record.zi_timer +
			    handler->zi_record.zi_duration * hz,
			    FUNC1()));
		} else {
			/* duration is negative so the subtraction here adds */
			FUNC0(handler->zi_record.zi_timer == 0 ||
			    handler->zi_record.zi_timer -
			    handler->zi_record.zi_duration >=
			    FUNC7(spa));
		}
	}

	FUNC6(&inject_lock);
}