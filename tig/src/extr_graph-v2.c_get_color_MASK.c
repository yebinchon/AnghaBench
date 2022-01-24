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
struct graph_v2 {int /*<<< orphan*/  colors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t
FUNC4(struct graph_v2 *graph, const char *new_id)
{
	size_t color;

	if (!new_id)
		new_id = "";

	FUNC3(&graph->colors);
	color = FUNC1(&graph->colors, new_id);

	if (color < (size_t) -1) {
		return color;
	}

	color = FUNC2(&graph->colors);
	FUNC0(&graph->colors, new_id, color);

	return color;
}