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
 size_t COMPILER_DEFAULT ; 
 char*** COMPILER_Names ; 
 int COMPILER_QTY ; 
 char* USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC1( char *szError )
{ int i;

  FUNC0( stderr, "%s", USAGE );

  FUNC0( stderr, "Current default <COMPILER>: %s\n",
		   COMPILER_Names[COMPILER_DEFAULT][0] );

  FUNC0( stderr, "Acceptable parameters for <COMPILER> are:\n" );
  for (i=1; i < COMPILER_QTY; i++)
      FUNC0( stderr, "     %-15.15s     %s\n",
		       COMPILER_Names[i][0],
		       COMPILER_Names[i][1] );
  FUNC0(stderr, "%s", szError);
  return 0;
}