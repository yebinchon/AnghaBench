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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ noisy ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* progName ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static 
void FUNC5 ( void )
{
  if (noisy) {
    FUNC2 ( stderr,
	      "\n%s: Compressed file ends unexpectedly;\n\t"
	      "perhaps it is corrupted?  *Possible* reason follows.\n",
	      progName );
    FUNC3 ( progName );
    FUNC4();
    FUNC0();
  }
  FUNC1( 2 );
}