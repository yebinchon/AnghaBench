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
struct menu_data {int /*<<< orphan*/  menu; int /*<<< orphan*/  s; int /*<<< orphan*/  data; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * item; } ;
struct client {struct menu_data* overlay_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYC_NONE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct menu_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct client *c)
{
	struct menu_data	*md = c->overlay_data;

	if (md->item != NULL)
		FUNC0(md->item);

	if (md->cb != NULL)
		md->cb(md->menu, UINT_MAX, KEYC_NONE, md->data);

	FUNC3(&md->s);
	FUNC2(md->menu);
	FUNC1(md);
}