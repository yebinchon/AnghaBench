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
struct TYPE_2__ {scalar_t__ aggsplit; } ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ AGGSPLIT_INITIAL_SERIAL ; 
 int /*<<< orphan*/  Aggref ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 

__attribute__((used)) static bool
FUNC4(Node *node, void *state)
{
	if (node == NULL)
		return false;

	if (FUNC0(node, Aggref) && FUNC1(Aggref, node)->aggsplit != AGGSPLIT_INITIAL_SERIAL)
		FUNC2(ERROR, "Cannot mix partialized and non-partialized aggregates in the same statement");

	return FUNC3((Node *) node, ensure_only_partials, state);
}