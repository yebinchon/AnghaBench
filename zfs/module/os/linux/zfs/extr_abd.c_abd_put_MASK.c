#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int abd_flags; int /*<<< orphan*/  abd_children; int /*<<< orphan*/  abd_size; TYPE_1__* abd_parent; } ;
typedef  TYPE_2__ abd_t ;
struct TYPE_7__ {int /*<<< orphan*/  abd_children; } ;

/* Variables and functions */
 int ABD_FLAG_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC5(abd_t *abd)
{
	FUNC2(abd);
	FUNC0(!(abd->abd_flags & ABD_FLAG_OWNER));

	if (abd->abd_parent != NULL) {
		(void) FUNC4(&abd->abd_parent->abd_children,
		    abd->abd_size, abd);
	}

	FUNC3(&abd->abd_children);
	FUNC1(abd);
}