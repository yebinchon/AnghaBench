#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {TYPE_1__* env; int /*<<< orphan*/  ref; } ;
struct reference {TYPE_2__* ref; } ;
struct line {struct reference* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFS_ALL_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (struct reference*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct view *view, struct line *line)
{
	struct reference *reference = line->data;

	if (FUNC1(reference)) {
		FUNC2(view->ref, REFS_ALL_NAME);
		return;
	}
	FUNC3(view->ref, reference->ref->id);
	FUNC3(view->env->head, reference->ref->id);
	FUNC4(view->env->ref, reference->ref->name, FUNC5(reference->ref->name));
	FUNC0(view->env, reference->ref, false);
}