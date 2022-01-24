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
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct graph_v2 {TYPE_1__ next_row; TYPE_1__ row; TYPE_1__ prev_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct graph_v2*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct graph_v2*) ; 

__attribute__((used)) static bool
FUNC2(struct graph_v2 *graph)
{
	while (FUNC1(graph)) {
		if (!FUNC0(graph, &graph->prev_row, graph->prev_row.size, NULL))
			return false;

		if (!FUNC0(graph, &graph->row, graph->row.size, NULL))
			return false;

		if (!FUNC0(graph, &graph->next_row, graph->next_row.size, NULL))
			return false;
	}

	return true;
}