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
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HIGH ; 
 scalar_t__ LOW ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static UCHAR
FUNC5(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, BOOL Ack)
{
   INT Bit = 0x80;
   UCHAR Data = 0;

   /* pull down SCL and release SDA */
   FUNC3(LOW);
   FUNC4(HIGH);

   /* read byte */
   for (Bit = (1 << 7); Bit != 0; Bit >>= 1)
     {
        FUNC3(LOW);
        FUNC0();
        FUNC3(HIGH);
        FUNC0();
        if (FUNC2() == HIGH)
          Data |= Bit;
     }

   /* send ack/nak */
   FUNC3(LOW);
   FUNC4(Ack ? LOW : HIGH);
   FUNC0();
   FUNC3(HIGH);
   do
     {
        FUNC0();
     }
   while (FUNC1() != HIGH);

   return Data;
}