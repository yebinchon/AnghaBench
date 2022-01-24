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
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  interval_length; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  TYPE_2__ Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  RowExclusiveLock ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_tuple_update ; 

int
FUNC1(Dimension *dim, int64 chunk_interval)
{
	dim->fd.interval_length = chunk_interval;

	return FUNC0(dim->fd.id, dimension_tuple_update, dim, RowExclusiveLock);
}