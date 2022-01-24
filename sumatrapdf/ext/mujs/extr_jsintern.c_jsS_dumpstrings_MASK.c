#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_StringNode ;
struct TYPE_3__ {int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jsS_sentinel ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(js_State *J)
{
	js_StringNode *root = J->strings;
	FUNC1("interned strings {\n");
	if (root && root != &jsS_sentinel)
		FUNC0(root, 1);
	FUNC1("}\n");
}