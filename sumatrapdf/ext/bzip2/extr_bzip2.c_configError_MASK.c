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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exitValue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static 
void FUNC3 ( void )
{
   FUNC1 ( stderr,
             "bzip2: I'm not configured correctly for this platform!\n"
             "\tI require Int32, Int16 and Char to have sizes\n"
             "\tof 4, 2 and 1 bytes to run properly, and they don't.\n"
             "\tProbably you can fix this by defining them correctly,\n"
             "\tand recompiling.  Bye!\n" );
   FUNC2(3);
   FUNC0(exitValue);
}