#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_5__ {struct TYPE_5__* b; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static js_Ast *FUNC4(js_State *J, int notin)
{
	js_Ast *head, *tail;
	head = tail = FUNC0(FUNC3(J, notin));
	while (FUNC1(J, ','))
		tail = tail->b = FUNC0(FUNC3(J, notin));
	return FUNC2(head);
}