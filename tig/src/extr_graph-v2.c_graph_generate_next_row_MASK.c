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
struct graph_v2 {int /*<<< orphan*/  id; int /*<<< orphan*/  next_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC1 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC2 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct graph_v2 *graph)
{
	FUNC3(&graph->next_row, graph->id);
	FUNC1(graph);
	FUNC2(graph);
	FUNC0(graph);
}