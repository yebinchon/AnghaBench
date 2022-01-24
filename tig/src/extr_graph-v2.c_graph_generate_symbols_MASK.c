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
struct graph_v2 {int position; char* id; int /*<<< orphan*/  colors; struct graph_row parents; struct graph_row next_row; struct graph_row row; struct graph_row prev_row; } ;
struct graph_symbol {int commit; int boundary; int initial; int merge; int parent_right; int matches_commit; int empty; int /*<<< orphan*/  color; int /*<<< orphan*/  new_column; void* shift_left; void* below_shift; void* continue_shift; void* next_right; int /*<<< orphan*/  flanked; int /*<<< orphan*/  below_commit; int /*<<< orphan*/  parent_down; void* continued_up_left; void* continued_left; void* continued_right; void* continued_up; void* continued_down; } ;
struct graph_column {char* id; struct graph_symbol symbol; } ;
struct graph_canvas {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct graph_row*) ; 
 void* FUNC3 (struct graph_row*,struct graph_row*,int) ; 
 void* FUNC4 (struct graph_row*,int,int) ; 
 void* FUNC5 (struct graph_row*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct graph_row*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct graph_v2*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct graph_v2*,struct graph_canvas*,struct graph_symbol*) ; 
 scalar_t__ FUNC9 (struct graph_column*) ; 
 int /*<<< orphan*/  FUNC10 (struct graph_row*,struct graph_row*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct graph_row*,struct graph_row*,int) ; 
 scalar_t__ FUNC12 (struct graph_row*,struct graph_row*,struct graph_row*,int) ; 
 void* FUNC13 (struct graph_row*,struct graph_row*,int) ; 

__attribute__((used)) static void
FUNC14(struct graph_v2 *graph, struct graph_canvas *canvas)
{
	struct graph_row *prev_row = &graph->prev_row;
	struct graph_row *row = &graph->row;
	struct graph_row *next_row = &graph->next_row;
	struct graph_row *parents = &graph->parents;
	int commits = FUNC2(parents);
	int initial = commits < 1;
	int merge = commits > 1;
	int pos;

	for (pos = 0; pos < row->size; pos++) {
		struct graph_column *column = &row->columns[pos];
		struct graph_symbol *symbol = &column->symbol;
		const char *id = next_row->columns[pos].id;

		symbol->commit            = (pos == graph->position);
		symbol->boundary          = (pos == graph->position && next_row->columns[pos].symbol.boundary);
		symbol->initial           = initial;
		symbol->merge             = merge;

		symbol->continued_down    = FUNC3(row, next_row, pos);
		symbol->continued_up      = FUNC3(prev_row, row, pos);
		symbol->continued_right   = FUNC5(row, pos, graph->position);
		symbol->continued_left    = FUNC4(row, pos, graph->position);
		symbol->continued_up_left = FUNC4(prev_row, pos, prev_row->size);

		symbol->parent_down       = FUNC11(parents, next_row, pos);
		symbol->parent_right      = (pos > graph->position && FUNC12(parents, row, next_row, pos));

		symbol->below_commit      = FUNC0(pos, graph);
		symbol->flanked           = FUNC6(row, pos, graph->position, graph->id);
		symbol->next_right        = FUNC5(next_row, pos, 0);
		symbol->matches_commit    = column->id == graph->id;

		symbol->shift_left        = FUNC13(row, prev_row, pos);
		symbol->continue_shift    = (pos + 1 < row->size) ? FUNC13(row, prev_row, pos + 1) : 0;
		symbol->below_shift       = prev_row->columns[pos].symbol.shift_left;

		symbol->new_column        = FUNC10(row, prev_row, pos);
		symbol->empty             = (!FUNC9(&row->columns[pos]));

		if (FUNC9(column)) {
			id = column->id;
		}
		symbol->color = FUNC7(graph, id);

		FUNC8(graph, canvas, symbol);
	}

	FUNC1(&graph->colors, graph->id);
}