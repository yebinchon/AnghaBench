#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ compressed_chunk_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  hypertable_relid; TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INVALID_CHUNK_ID ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool
FUNC6(Oid chunk_relid, bool if_not_compressed)
{
	Chunk *srcchunk = FUNC5(chunk_relid, 0, true);
	if (srcchunk->fd.compressed_chunk_id != INVALID_CHUNK_ID)
	{
		FUNC1((if_not_compressed ? NOTICE : ERROR),
				(FUNC2(ERRCODE_DUPLICATE_OBJECT),
				 FUNC3("chunk \"%s\" is already compressed", FUNC4(chunk_relid))));
		return false;
	}

	FUNC0(srcchunk->hypertable_relid, chunk_relid);
	return true;
}