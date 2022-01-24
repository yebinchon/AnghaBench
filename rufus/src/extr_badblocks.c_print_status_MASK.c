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

/* Variables and functions */
 scalar_t__ MSG_191 ; 
 int /*<<< orphan*/  MSG_235 ; 
 int /*<<< orphan*/  OP_BADBLOCKS ; 
 scalar_t__ OP_READ ; 
 scalar_t__ OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 float FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ cur_op ; 
 int cur_pattern ; 
 scalar_t__ currently_testing ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int nr_pattern ; 
 scalar_t__ num_blocks ; 
 int /*<<< orphan*/  num_corruption_errors ; 
 int /*<<< orphan*/  num_read_errors ; 
 int /*<<< orphan*/  num_write_errors ; 

__attribute__((used)) static void FUNC4(void)
{
	float percent;

	percent = FUNC2((unsigned long) currently_testing,
					(unsigned long) num_blocks);
	FUNC0(0, MSG_235, FUNC3(MSG_191 + ((cur_op==OP_WRITE)?0:1)),
				cur_pattern, nr_pattern,
				percent,
				num_read_errors,
				num_write_errors,
				num_corruption_errors);
	percent = (percent/2.0f) + ((cur_op==OP_READ)? 50.0f : 0.0f);
	FUNC1(OP_BADBLOCKS, (((cur_pattern-1)*100.0f) + percent) / nr_pattern);
}