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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ LOW ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VIDEOPRT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static BOOL
FUNC8(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, UCHAR Address)
{
   /* make sure the bus is free */
   if (FUNC5() == LOW || FUNC4() == LOW)
     {
        FUNC6(VIDEOPRT, "I2CStart: Bus is not free!\n");
        return FALSE;
     }

   /* send address */
   FUNC7(LOW);
   FUNC0();
   if (!FUNC2(HwDeviceExtension, i2c, Address))
     {
        /* ??release the bus?? */
        FUNC1(HwDeviceExtension, i2c);
        FUNC6(VIDEOPRT, "I2CStart: Device not found (Address = 0x%x)\n", Address);
        return FALSE;
     }

   FUNC3(VIDEOPRT, "I2CStart: SUCCESS!\n");
   return TRUE;
}