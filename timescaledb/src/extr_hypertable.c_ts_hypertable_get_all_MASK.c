#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  LockTupleKeyShare ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hypertable_tuple_append ; 

List *
FUNC1(void)
{
	List *result = NIL;

	FUNC0(NULL,
								   0,
								   InvalidOid,
								   hypertable_tuple_append,
								   &result,
								   -1,
								   LockTupleKeyShare,
								   false,
								   CurrentMemoryContext);

	return result;
}