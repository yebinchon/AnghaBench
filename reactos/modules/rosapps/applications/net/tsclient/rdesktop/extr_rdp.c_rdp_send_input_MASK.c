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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  RDP_DATA_PDU_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

BOOL
FUNC6(RDPCLIENT * This, uint32 time, uint16 message_type, uint16 device_flags, uint16 param1, uint16 param2)
{
	STREAM s;

	s = FUNC3(This, 16);

	if(s == NULL)
		return False;

	FUNC1(s, 1);	/* number of events */
	FUNC0(s, 0);	/* pad */

	FUNC2(s, time);
	FUNC1(s, message_type);
	FUNC1(s, device_flags);
	FUNC1(s, param1);
	FUNC1(s, param2);

	FUNC5(s);
	return FUNC4(This, s, RDP_DATA_PDU_INPUT);
}