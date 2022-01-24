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
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PI2C_CALLBACKS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC4(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, UCHAR Address)
{
   /* setup lines for repeated start condition */
   FUNC2(LOW);
   FUNC0();
   FUNC3(HIGH);
   FUNC0();
   FUNC2(HIGH);
   FUNC0();

   return FUNC1(HwDeviceExtension, i2c, Address);
}