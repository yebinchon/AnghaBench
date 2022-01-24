#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ num_dimensions; } ;
struct TYPE_8__ {TYPE_5__* space; } ;
struct TYPE_7__ {scalar_t__ num_dimensions; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_1__ HypertableRestrictInfo ;
typedef  TYPE_2__ Hypertable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

List *
FUNC3(HypertableRestrictInfo *hri, Hypertable *ht,
										   LOCKMODE lockmode)
{
	List *dimension_vecs = FUNC1(hri);

	FUNC0(hri->num_dimensions == ht->space->num_dimensions);

	return FUNC2(ht->space, dimension_vecs, lockmode);
}