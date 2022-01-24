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
struct TYPE_2__ {int /*<<< orphan*/  id_map; } ;
struct graph_v2 {TYPE_1__ colors; } ;
struct graph {struct graph_v2* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct graph_v2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ intern_string_htab ; 

__attribute__((used)) static void
FUNC3(struct graph *graph_ref)
{
	struct graph_v2 *graph = graph_ref->private;

	FUNC1(graph->colors.id_map);

	FUNC0(graph);

	if (intern_string_htab)
		FUNC2(intern_string_htab);
}