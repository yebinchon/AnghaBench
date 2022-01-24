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

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 unsigned long HDR_SYNC ; 
 int TRUE ; 

__attribute__((used)) static int FUNC3(unsigned long head)
{
	if
	(
		((head & HDR_SYNC) != HDR_SYNC)
		||
		/* layer: 01,10,11 is 1,2,3; 00 is reserved */
		(!(FUNC1(head)))
		||
		/* 1111 means bad bitrate */
		(FUNC0(head) == 0xf)
		||
		/* sampling freq: 11 is reserved */
		(FUNC2(head) == 0x3)
		/* here used to be a mpeg 2.5 check... re-enabled 2.5 decoding due to lack of evidence that it is really not good */
	)
	{
		return FALSE;
	}
	/* if no check failed, the header is valid (hopefully)*/
	else
	{
		return TRUE;
	}
}