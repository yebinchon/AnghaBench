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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 scalar_t__ I8042_DATA_REGISTER_OFFSET ; 
 scalar_t__ I8042_PHYSICAL_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

UCHAR FUNC1(void)
{
    UCHAR ucRet;
    ucRet = FUNC0((PUCHAR)(I8042_PHYSICAL_BASE + I8042_DATA_REGISTER_OFFSET));
    return ucRet;
}