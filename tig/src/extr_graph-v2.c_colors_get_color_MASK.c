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
struct colors {int /*<<< orphan*/  id_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct id_color*) ; 
 int /*<<< orphan*/  FUNC1 (struct id_color*) ; 
 struct id_color* FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(struct colors *colors, const char *id)
{
	struct id_color *key = FUNC2(id, 0);
	struct id_color *node = (struct id_color *) FUNC0(colors->id_map, key);

	FUNC1(key);

	if (node == NULL) {
		return (size_t) -1; // Max value of size_t. ID not found.
	}
	return node->color;
}