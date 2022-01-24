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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t MSG_000 ; 
 size_t MSG_MAX ; 
 int /*<<< orphan*/ * current_msg_table ; 
 int /*<<< orphan*/ * default_msg_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(BOOL reinit)
{
	size_t j;
	for (j=1; j<MSG_MAX-MSG_000; j++) {
		FUNC0(current_msg_table[j]);
		if (!reinit)
			FUNC0(default_msg_table[j]);
	}
}