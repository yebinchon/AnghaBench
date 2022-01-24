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
typedef  size_t ULONG ;
typedef  int UCHAR ;
typedef  scalar_t__* LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(LPSTR p,ULONG x,ULONG y)
{
	ULONG i;

//    ENTER_FUNC();

    FUNC0();

	for(i=0;p[i]!=0;i++)
	{
		if((UCHAR)p[i]>=0x20 && (UCHAR)p[i]<0x80)
		{
			FUNC2(x+i,y,p[i]);
		}
	}

    FUNC1();

    FUNC3();

//    LEAVE_FUNC();
}