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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int /*<<< orphan*/ ,int) ; 

void
FUNC2(int vcpu, int vector, int errcode_valid,
    uint32_t errcode)
{
	int error, restart_instruction;

	restart_instruction = 1;

	error = FUNC1(vcpu, vector, errcode_valid, errcode,
	    restart_instruction);
	FUNC0(error == 0);
}