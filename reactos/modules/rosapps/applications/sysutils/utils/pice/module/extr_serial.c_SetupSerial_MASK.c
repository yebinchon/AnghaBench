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
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  COM1BASE ; 
 int /*<<< orphan*/  COM2BASE ; 
 int /*<<< orphan*/  COM3BASE ; 
 int /*<<< orphan*/  COM4BASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NO_PARITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  usSerialPortBase ; 

void FUNC3(ULONG port,ULONG baudrate)
{
	USHORT ports[]={COM1BASE,COM2BASE,COM3BASE,COM4BASE};

    usSerialPortBase = ports[port-1];
	FUNC1(NO_PARITY,8,1);
	FUNC2(baudrate);

    // clear out received bytes
    // else we would think there's a terminal connected
    FUNC0();
}