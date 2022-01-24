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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  IndexInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

void
FUNC4(int32 hypertable_id, Relation hypertable_idxrel,
											   int32 chunk_id, Relation chunkrel,
											   IndexInfo *indexinfo)
{
	Oid chunk_indexrelid = FUNC3(hypertable_id,
																 hypertable_idxrel,
																 chunkrel,
																 indexinfo,
																 false,
																 false);

	FUNC1(chunk_id,
					   FUNC2(chunk_indexrelid),
					   hypertable_id,
					   FUNC2(FUNC0(hypertable_idxrel)));
}