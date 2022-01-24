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
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PI2C_CALLBACKS ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ LOW ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  VIDEOPRT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static BOOL
FUNC6(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, UCHAR Data)
{
   UCHAR Bit;
   BOOL Ack;

   /* transmit data */
   for (Bit = (1 << 7); Bit != 0; Bit >>= 1)
     {
        FUNC4(LOW);
        FUNC5((Data & Bit) ? HIGH : LOW);
        FUNC0();
        FUNC4(HIGH);
        FUNC0();
     }

   /* get ack */
   FUNC4(LOW);
   FUNC5(HIGH);
   FUNC0();
   FUNC4(HIGH);
   do
     {
        FUNC0();
     }
   while (FUNC2() != HIGH);
   Ack = (FUNC3() == LOW);
   FUNC0();

   FUNC1(VIDEOPRT, "I2CWrite: %s\n", Ack ? "Ack" : "Nak");
   return Ack;
}