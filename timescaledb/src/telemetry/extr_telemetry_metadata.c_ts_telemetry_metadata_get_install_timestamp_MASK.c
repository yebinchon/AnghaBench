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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CSTRINGOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  METADATA_TIMESTAMP_KEY_NAME ; 
 int /*<<< orphan*/  TIMESTAMPTZOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

Datum
FUNC5(void)
{
	bool isnull;
	Datum timestamp;

	timestamp = FUNC3(FUNC0(METADATA_TIMESTAMP_KEY_NAME),
									  CSTRINGOID,
									  TIMESTAMPTZOID,
									  &isnull);

	if (isnull)
		timestamp = FUNC4(FUNC0(METADATA_TIMESTAMP_KEY_NAME),
									   CSTRINGOID,
									   FUNC2(FUNC1()),
									   TIMESTAMPTZOID,
									   true);

	return timestamp;
}