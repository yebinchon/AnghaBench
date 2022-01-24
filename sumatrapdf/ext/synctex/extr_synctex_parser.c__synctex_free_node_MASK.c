#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* synctex_node_t ;
struct TYPE_10__ {TYPE_1__* class; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* sibling ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(synctex_node_t node) {
	/* SumatraPDF: prevent stack overflow */
	synctex_node_t next;
	while (node) {
		(*((node->class)->sibling))(node);
		next = FUNC2(node);
		FUNC1(FUNC0(node));
		FUNC3(node);
		node = next;
	}
	return;
}