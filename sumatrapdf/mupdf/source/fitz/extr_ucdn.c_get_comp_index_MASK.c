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
typedef  int uint32_t ;
struct TYPE_5__ {int start; int index; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Reindex ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__ const*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_reindex ; 

__attribute__((used)) static int FUNC1(uint32_t code, const Reindex *idx, size_t len)
{
	Reindex *res;
	Reindex r = {0, 0, 0};
	r.start = code;
	res = (Reindex *) FUNC0(&r, idx, len, sizeof(Reindex), compare_reindex);

	if (res != NULL)
		return res->index + (code - res->start);
	else
		return -1;
}