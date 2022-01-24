#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct graph_row {TYPE_1__* columns; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct graph_row*,struct graph_row*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC2(struct graph_row *row, struct graph_row *prev_row, int pos)
{
	int i;

	if (!FUNC1(&row->columns[pos]))
		return false;

	for (i = pos - 1; i >= 0; i--) {
		if (!FUNC1(&row->columns[i]))
			continue;

		if (row->columns[i].id != row->columns[pos].id)
			continue;

		if (!FUNC0(prev_row, row, i))
			return true;

		break;
	}

	return false;
}