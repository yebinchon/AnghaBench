#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_6__ {scalar_t__ ds_num_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 

uint64_t
FUNC2(dsl_dataset_t *ds)
{
	FUNC0(ds->ds_is_snapshot);
	return (FUNC1(ds)->ds_num_children - 1);
}