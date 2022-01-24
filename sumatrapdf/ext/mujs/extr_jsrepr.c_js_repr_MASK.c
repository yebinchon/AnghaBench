#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int bot; int top; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_17__ {char* s; } ;
typedef  TYPE_2__ js_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__**) ; 

void FUNC9(js_State *J, int idx)
{
	js_Buffer *sb = NULL;
	int savebot;

	if (FUNC7(J)) {
		FUNC2(J, sb);
		FUNC6(J);
	}

	FUNC0(J, idx);

	savebot = J->bot;
	J->bot = J->top - 1;
	FUNC8(J, &sb);
	J->bot = savebot;

	FUNC3(J, 1);

	FUNC5(J, &sb, 0);
	FUNC4(J, sb ? sb->s : "undefined");

	FUNC1(J);
	FUNC2(J, sb);
}