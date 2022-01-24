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
struct TYPE_9__ {char lookahead; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_10__ {struct TYPE_10__* b; } ;
typedef  TYPE_2__ js_Ast ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC4(js_State *J)
{
	js_Ast *head, *tail;
	if (J->lookahead == '}')
		return NULL;
	head = tail = FUNC0(FUNC3(J));
	while (FUNC1(J, ',')) {
		if (J->lookahead == '}')
			break;
		tail = tail->b = FUNC0(FUNC3(J));
	}
	return FUNC2(head);
}