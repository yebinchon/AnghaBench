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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Simple8bRleSerialized ;
typedef  int /*<<< orphan*/  DeltaDeltaCompressed ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

Datum
FUNC6(StringInfo buffer)
{
	uint8 has_nulls;
	uint64 last_value;
	uint64 last_delta;
	Simple8bRleSerialized *delta_deltas;
	Simple8bRleSerialized *nulls = NULL;
	DeltaDeltaCompressed *compressed;

	has_nulls = FUNC3(buffer);
	if (has_nulls != 0 && has_nulls != 1)
		FUNC2(ERROR, "invalid recv in deltadelta: bad bool");

	last_value = FUNC4(buffer);
	last_delta = FUNC4(buffer);
	delta_deltas = FUNC5(buffer);
	if (has_nulls)
		nulls = FUNC5(buffer);

	compressed = FUNC1(last_value, last_delta, delta_deltas, nulls);

	FUNC0(compressed);
}