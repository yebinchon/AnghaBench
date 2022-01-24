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
struct graph_row {int size; struct graph_column* columns; } ;
struct graph_v2 {struct graph_row parents; struct graph_row next_row; struct graph_row row; struct graph_row prev_row; } ;
struct graph_column {int /*<<< orphan*/ * id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct graph_column*) ; 
 size_t FUNC1 (struct graph_row*) ; 
 int /*<<< orphan*/  FUNC2 (struct graph_v2*,struct graph_row*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct graph_v2 *graph)
{
	struct graph_row *prev_row = &graph->prev_row;
	struct graph_row *row = &graph->row;
	struct graph_row *next_row = &graph->next_row;
	struct graph_row *parents = &graph->parents;
	int i;

	for (i = 0; i < parents->size; i++) {
		struct graph_column *new = &parents->columns[i];

		if (FUNC0(new)) {
			size_t match = FUNC1(next_row);

			if (match == next_row->size && FUNC0(&next_row->columns[next_row->size - 1])) {
				FUNC2(graph, next_row, next_row->size, new->id);
				FUNC2(graph, row, row->size, NULL);
				FUNC2(graph, prev_row, prev_row->size, NULL);
			} else {
				next_row->columns[match] = *new;
			}
		}
	}
}