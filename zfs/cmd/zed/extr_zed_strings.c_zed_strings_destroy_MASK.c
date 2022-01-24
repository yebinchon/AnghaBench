#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_1__ zed_strings_t ;
typedef  int /*<<< orphan*/  zed_strings_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(zed_strings_t *zsp)
{
	void *cookie;
	zed_strings_node_t *np;

	if (!zsp)
		return;

	cookie = NULL;
	while ((np = FUNC2(&zsp->tree, &cookie)))
		FUNC0(np);

	FUNC1(&zsp->tree);
	FUNC3(zsp);
}