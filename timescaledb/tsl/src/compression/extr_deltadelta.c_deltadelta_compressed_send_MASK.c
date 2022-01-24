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
struct TYPE_5__ {scalar_t__ compression_algorithm; } ;
struct TYPE_4__ {int /*<<< orphan*/  delta_deltas; scalar_t__ has_nulls; int /*<<< orphan*/  last_delta; int /*<<< orphan*/  last_value; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Simple8bRleSerialized ;
typedef  TYPE_1__ DeltaDeltaCompressed ;
typedef  TYPE_2__ CompressedDataHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMPRESSION_ALGORITHM_DELTADELTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(CompressedDataHeader *header, StringInfo buffer)
{
	const DeltaDeltaCompressed *data = (DeltaDeltaCompressed *) header;
	FUNC0(header->compression_algorithm == COMPRESSION_ALGORITHM_DELTADELTA);
	FUNC1(buffer, data->has_nulls);
	FUNC2(buffer, data->last_value);
	FUNC2(buffer, data->last_delta);
	FUNC3(buffer, &data->delta_deltas);
	if (data->has_nulls)
	{
		Simple8bRleSerialized *nulls =
			(Simple8bRleSerialized *) (((char *) &data->delta_deltas) +
									   FUNC4(&data->delta_deltas));
		FUNC3(buffer, nulls);
	}
}