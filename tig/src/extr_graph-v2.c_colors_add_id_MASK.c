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
struct id_color {int dummy; } ;
struct colors {int /*<<< orphan*/ * count; int /*<<< orphan*/  id_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 void** FUNC0 (int /*<<< orphan*/ ,struct id_color*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct id_color*) ; 
 struct id_color* FUNC2 (char const*,size_t const) ; 

__attribute__((used)) static void
FUNC3(struct colors *colors, const char *id, const size_t color)
{
	struct id_color *node = FUNC2(id, color);
	void **slot = FUNC0(colors->id_map, node, INSERT);

	if (slot != NULL && *slot == NULL) {
		*slot = node;
		colors->count[color]++;
	} else {
		FUNC1(node);
	}
}