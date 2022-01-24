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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  errcode_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_ET_CANCEL_REQUESTED ; 
 int /*<<< orphan*/  FormatStatus ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_217 ; 
 int /*<<< orphan*/  OP_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ext2_max_marker ; 
 int ext2_percent_share ; 
 int ext2_percent_start ; 
 float FUNC2 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

errcode_t FUNC4(int64_t cur_value, int64_t max_value)
{
	static int64_t last_value = -1;
	if (max_value == 0)
		return 0;
	FUNC1(OP_FORMAT, MSG_217, (uint64_t)((ext2_percent_start * max_value) + (ext2_percent_share * cur_value)), max_value);
	cur_value = (int64_t)(((float)cur_value / (float)max_value) * FUNC2(ext2_max_marker, (float)max_value));
	if ((cur_value < last_value) || (cur_value > last_value)) {
		last_value = cur_value;
		FUNC3("+");
	}
	return FUNC0(FormatStatus) ? EXT2_ET_CANCEL_REQUESTED : 0;
}