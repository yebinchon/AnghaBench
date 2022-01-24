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
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  Jsonb ;

/* Variables and functions */
 int /*<<< orphan*/  END_TIME_FIELD ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FIELD_NOT_FOUND_ERRSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static TimestampTz
FUNC3(Jsonb *license)
{
	bool found = false;
	TimestampTz end_time =
		FUNC2(license, FUNC0(END_TIME_FIELD), &found);

	if (!found)
		FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED, FIELD_NOT_FOUND_ERRSTRING, END_TIME_FIELD);
	return end_time;
}