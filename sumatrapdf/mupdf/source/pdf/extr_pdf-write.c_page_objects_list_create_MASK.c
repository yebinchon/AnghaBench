#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cap; scalar_t__ len; } ;
typedef  TYPE_1__ page_objects_list ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static page_objects_list *
FUNC1(fz_context *ctx)
{
	page_objects_list *pol = FUNC0(ctx, 1, sizeof(*pol));

	pol->cap = 1;
	pol->len = 0;
	return pol;
}