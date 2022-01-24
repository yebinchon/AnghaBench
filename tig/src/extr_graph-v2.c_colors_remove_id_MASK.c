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
struct id_color {size_t color; } ;
struct colors {int /*<<< orphan*/  id_map; int /*<<< orphan*/ * count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**) ; 
 void** FUNC1 (int /*<<< orphan*/ ,struct id_color*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct id_color*) ; 
 struct id_color* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct colors *colors, const char *id)
{
	struct id_color *node = FUNC3(id, 0);
	void **slot = FUNC1(colors->id_map, node, NO_INSERT);

	if (slot != NULL && *slot != NULL) {
		colors->count[((struct id_color *) *slot)->color]--;
		FUNC0(colors->id_map, slot);
	}

	FUNC2(node);
}