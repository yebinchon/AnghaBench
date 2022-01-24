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
struct graph_row {int size; TYPE_1__* columns; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC1(struct graph_row *row, struct graph_row *prev_row, int pos)
{
	int i;

	if (!FUNC0(&prev_row->columns[pos]))
		return true;

	for (i = pos; i < row->size; i++) {
		if (row->columns[pos].id == prev_row->columns[i].id)
			return false;
	}

	return true;
}