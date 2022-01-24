#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  column_name; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  TYPE_2__ Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  RowExclusiveLock ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_tuple_update ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

int
FUNC2(Dimension *dim, const char *newname)
{
	FUNC1(&dim->fd.column_name, newname);

	return FUNC0(dim->fd.id, dimension_tuple_update, dim, RowExclusiveLock);
}