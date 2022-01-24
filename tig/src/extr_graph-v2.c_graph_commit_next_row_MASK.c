#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * columns; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/ * columns; } ;
struct TYPE_4__ {int /*<<< orphan*/ * columns; } ;
struct graph_v2 {int position; int prev_position; TYPE_3__ next_row; TYPE_2__ row; TYPE_1__ prev_row; int /*<<< orphan*/  parents; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct graph_v2 *graph)
{
	int i;

	for (i = 0; i < graph->row.size; i++) {
		graph->prev_row.columns[i] = graph->row.columns[i];

		if (i == graph->position && FUNC0(&graph->parents) > 0)
			graph->prev_row.columns[i] = graph->next_row.columns[i];

		if (!FUNC1(&graph->prev_row.columns[i]))
			graph->prev_row.columns[i] = graph->next_row.columns[i];

		graph->row.columns[i] = graph->next_row.columns[i];
	}

	graph->prev_position = graph->position;
}