#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zinject_record_t ;
struct TYPE_5__ {int zi_id; int /*<<< orphan*/  zi_spa; int /*<<< orphan*/  zi_record; } ;
typedef  TYPE_1__ inject_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inject_handlers ; 
 int /*<<< orphan*/  inject_lock ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 

int
FUNC9(int *id, char *name, size_t buflen,
    zinject_record_t *record)
{
	inject_handler_t *handler;
	int ret;

	FUNC3(&spa_namespace_lock);
	FUNC5(&inject_lock, RW_READER);

	for (handler = FUNC1(&inject_handlers); handler != NULL;
	    handler = FUNC2(&inject_handlers, handler))
		if (handler->zi_id > *id)
			break;

	if (handler) {
		*record = handler->zi_record;
		*id = handler->zi_id;
		(void) FUNC8(name, FUNC7(handler->zi_spa), buflen);
		ret = 0;
	} else {
		ret = FUNC0(ENOENT);
	}

	FUNC6(&inject_lock);
	FUNC4(&spa_namespace_lock);

	return (ret);
}