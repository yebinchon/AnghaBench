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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(int32 hypertable_id, Oid hypertable_constraint,
									  int32 chunk_id, Oid chunk_constraint)
{
	Oid chunk_indexrelid = FUNC3(chunk_constraint);
	Oid hypertable_indexrelid = FUNC3(hypertable_constraint);

	FUNC0(FUNC1(chunk_indexrelid));
	FUNC0(FUNC1(hypertable_indexrelid));

	FUNC2(chunk_id,
					   FUNC4(chunk_indexrelid),
					   hypertable_id,
					   FUNC4(hypertable_indexrelid));
}