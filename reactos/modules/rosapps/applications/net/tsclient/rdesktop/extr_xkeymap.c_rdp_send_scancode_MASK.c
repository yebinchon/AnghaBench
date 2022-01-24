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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int KBD_FLAG_EXT ; 
 int /*<<< orphan*/  RDP_INPUT_SCANCODE ; 
 int RDP_KEYRELEASE ; 
 int SCANCODE_EXTENDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC3(RDPCLIENT * This, uint32 time, uint16 flags, uint8 scancode)
{
	FUNC2(This, scancode, !(flags & RDP_KEYRELEASE));

	if (scancode & SCANCODE_EXTENDED)
	{
		FUNC0(("Sending extended scancode=0x%x, flags=0x%x\n",
			   scancode & ~SCANCODE_EXTENDED, flags));
		FUNC1(This, time, RDP_INPUT_SCANCODE, flags | KBD_FLAG_EXT,
			       scancode & ~SCANCODE_EXTENDED, 0);
	}
	else
	{
		FUNC0(("Sending scancode=0x%x, flags=0x%x\n", scancode, flags));
		FUNC1(This, time, RDP_INPUT_SCANCODE, flags, scancode, 0);
	}
}