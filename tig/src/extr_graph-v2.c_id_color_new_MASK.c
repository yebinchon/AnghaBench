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
struct id_color {char* id; size_t color; } ;

/* Variables and functions */
 struct id_color* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

struct id_color *
FUNC3(const char *id, size_t color)
{
	struct id_color *node = FUNC0(sizeof(struct id_color));

	node->id = (char *) FUNC0(FUNC2(id) + 1);
	FUNC1(node->id, id);
	node->color = color;

	return node;
}