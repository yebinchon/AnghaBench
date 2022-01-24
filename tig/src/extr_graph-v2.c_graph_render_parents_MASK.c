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
struct TYPE_2__ {scalar_t__ size; } ;
struct graph_v2 {scalar_t__ position; TYPE_1__ parents; } ;
struct graph_canvas {int dummy; } ;
struct graph {struct graph_v2* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct graph*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC2 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC3 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC4 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC5 (struct graph_v2*,struct graph_canvas*) ; 

__attribute__((used)) static bool
FUNC6(struct graph *graph_ref, struct graph_canvas *canvas)
{
	struct graph_v2 *graph = graph_ref->private;

	if (graph->parents.size == 0 &&
	    !FUNC0(graph_ref, NULL))
		return false;

	if (!FUNC3(graph))
		return false;

	FUNC4(graph);
	FUNC5(graph, canvas);
	FUNC2(graph);

	graph->parents.size = graph->position = 0;

	if (!FUNC1(graph))
		return false;

	return true;
}