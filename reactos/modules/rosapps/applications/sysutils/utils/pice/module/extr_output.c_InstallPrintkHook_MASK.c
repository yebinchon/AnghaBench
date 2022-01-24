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
typedef  int /*<<< orphan*/  PULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  PrintkCallback ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bIsPrintkPatched ; 
 scalar_t__ ulPrintk ; 

void FUNC6(void)
{

	FUNC2();

	if( bIsPrintkPatched )
			return;

  FUNC1((0,"installing PrintString hook\n"));
	FUNC5("_KdpPrintString",(PULONG)&ulPrintk);

	FUNC1((0,"_KdpPrintString @ %x\n", ulPrintk));
	FUNC0( ulPrintk );                 // temporary
    if(ulPrintk)
    {
      bIsPrintkPatched = FUNC3(ulPrintk,TRUE,PrintkCallback);
  		FUNC1((0,"KdpPrintStringTest breakpoint installed? %d\n", bIsPrintkPatched));
    }

	FUNC4();
}