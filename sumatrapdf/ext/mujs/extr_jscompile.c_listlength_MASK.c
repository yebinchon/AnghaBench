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
struct TYPE_3__ {struct TYPE_3__* b; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(js_Ast *list)
{
	int n = 0;
	while (list) ++n, list = list->b;
	return n;
}