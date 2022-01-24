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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;
struct TYPE_6__ {TYPE_1__ ctx; } ;
typedef  TYPE_2__ ScanIterator ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_compression_chunk_size_pkey_chunk_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  COMPRESSION_CHUNK_SIZE ; 
 int /*<<< orphan*/  COMPRESSION_CHUNK_SIZE_PKEY ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ScanIterator *iterator, int32 uncompressed_chunk_id)
{
	iterator->ctx.index =
		FUNC1(FUNC2(), COMPRESSION_CHUNK_SIZE, COMPRESSION_CHUNK_SIZE_PKEY);
	FUNC3(iterator,
								   Anum_compression_chunk_size_pkey_chunk_id,
								   BTEqualStrategyNumber,
								   F_INT4EQ,
								   FUNC0(uncompressed_chunk_id));
}