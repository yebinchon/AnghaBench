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
struct watch {struct watch* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct watch*,int /*<<< orphan*/ ,int) ; 
 struct watch* watches ; 

void
FUNC1(struct watch *watch)
{
	struct watch *pos, *prev = NULL;

	for (pos = watches; pos; prev = pos, pos = pos->next) {
		if (watch != pos)
			continue;
		if (!prev)
			watches = watch->next;
		else
			prev->next = watch->next;
		break;
	}

	FUNC0(watch, 0, sizeof(*watch));
}