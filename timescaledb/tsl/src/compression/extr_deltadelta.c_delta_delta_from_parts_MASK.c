#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64 ;
typedef  scalar_t__ uint32 ;
struct TYPE_10__ {int has_nulls; int /*<<< orphan*/  delta_deltas; void* last_delta; void* last_value; int /*<<< orphan*/  compression_algorithm; int /*<<< orphan*/  vl_len_; } ;
struct TYPE_9__ {scalar_t__ num_elements; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_1__ Simple8bRleSerialized ;
typedef  TYPE_2__ DeltaDeltaCompressed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  COMPRESSION_ALGORITHM_DELTADELTA ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ MaxAllocSize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC3 (char*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 char* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static DeltaDeltaCompressed *
FUNC10(uint64 last_value, uint64 last_delta, Simple8bRleSerialized *deltas,
					   Simple8bRleSerialized *nulls)
{
	uint32 nulls_size = 0;
	Size compressed_size;
	char *compressed_data;
	DeltaDeltaCompressed *compressed;
	if (nulls != NULL)
		nulls_size = FUNC9(nulls);
	compressed_size =
		sizeof(DeltaDeltaCompressed) + FUNC8(deltas) + nulls_size;

	if (!FUNC0(compressed_size))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC6("compressed size exceeds the maximum allowed (%d)", (int) MaxAllocSize)));

	compressed_data = FUNC7(compressed_size);
	compressed = (DeltaDeltaCompressed *) compressed_data;
	FUNC2(&compressed->vl_len_, compressed_size);

	compressed->compression_algorithm = COMPRESSION_ALGORITHM_DELTADELTA;
	compressed->last_value = last_value;
	compressed->last_delta = last_delta;
	compressed->has_nulls = nulls_size != 0 ? 1 : 0;

	compressed_data = (char *) &compressed->delta_deltas;
	compressed_data =
		FUNC3(compressed_data,
											 FUNC9(deltas),
											 deltas);
	if (compressed->has_nulls)
	{
		FUNC1(nulls->num_elements > deltas->num_elements);
		FUNC3(compressed_data, nulls_size, nulls);
	}

	return compressed;
}