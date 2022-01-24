#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5 ( int argc, char** argv, char** environ )
{
 LARGE_INTEGER liFrequency;
 LARGE_INTEGER liStartTime;
 LARGE_INTEGER liCurrentTime;

 FUNC1 ( &liFrequency );
 FUNC4 ( "HIGH RESOLUTION PERFOMANCE COUNTER Frequency = %I64d CLOCKS IN SECOND\n",
	     liFrequency.QuadPart );


 if (liFrequency.QuadPart == 0)
 {
	FUNC4("Your computer does not support High Resolution Performance counter\n");
	return;
 }

 FUNC4 ( "Press <ENTER> to start test...\n" );
 FUNC3();

 FUNC4 ( "\nPress any key to quit test\n\n" );
 FUNC0 ( &liStartTime );
 for (;;)
 {
	FUNC0 ( &liCurrentTime );
	FUNC4("Elapsed Time : %8.6f mSec\r",
          ((double)( (liCurrentTime.QuadPart - liStartTime.QuadPart)* (double)1000.0/(double)liFrequency.QuadPart )) );
	if (FUNC2())
		break;
 }


}