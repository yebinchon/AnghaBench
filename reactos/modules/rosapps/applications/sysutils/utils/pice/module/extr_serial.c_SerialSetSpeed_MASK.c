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
typedef  int /*<<< orphan*/  USHORT ;
typedef  long ULONG ;
typedef  int UCHAR ;

/* Variables and functions */
 scalar_t__ DLH ; 
 scalar_t__ DLL ; 
 scalar_t__ LCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ usSerialPortBase ; 

void FUNC2(ULONG baudrate)
{
    UCHAR c;
    ULONG divisor;

    divisor = (ULONG) (115200L/baudrate);

    c = FUNC0((USHORT)(usSerialPortBase + LCR));
    FUNC1((USHORT)(usSerialPortBase + LCR), (UCHAR)(c | 0x80)); // Set DLAB
    FUNC1((USHORT)(usSerialPortBase + DLL), (UCHAR)(divisor & 0x00FF));
    FUNC1((USHORT)(usSerialPortBase + DLH), (UCHAR)((divisor >> 8) & 0x00FF));
    FUNC1((USHORT)(usSerialPortBase + LCR), c);          // Reset DLAB

}