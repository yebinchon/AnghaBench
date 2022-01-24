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
struct TYPE_7__ {TYPE_2__* gcast; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_8__ {int /*<<< orphan*/  jumps; struct TYPE_8__* gcnext; } ;
typedef  TYPE_2__ js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 

void FUNC2(js_State *J)
{
	js_Ast *node = J->gcast;
	while (node) {
		js_Ast *next = node->gcnext;
		FUNC0(J, node->jumps);
		FUNC1(J, node);
		node = next;
	}
	J->gcast = NULL;
}