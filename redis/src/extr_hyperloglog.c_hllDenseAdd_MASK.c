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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,long*) ; 

int FUNC2(uint8_t *registers, unsigned char *ele, size_t elesize) {
    long index;
    uint8_t count = FUNC1(ele,elesize,&index);
    /* Update the register if this element produced a longer run of zeroes. */
    return FUNC0(registers,index,count);
}