#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct seat_config* name; } ;
struct seat_config {TYPE_1__ xcursor_theme; TYPE_2__* attachments; struct seat_config* name; } ;
struct TYPE_4__ {int length; int /*<<< orphan*/ * items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seat_config*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct seat_config *seat) {
	if (!seat) {
		return;
	}

	FUNC0(seat->name);
	for (int i = 0; i < seat->attachments->length; ++i) {
		FUNC2(seat->attachments->items[i]);
	}
	FUNC1(seat->attachments);
	FUNC0(seat->xcursor_theme.name);
	FUNC0(seat);
}