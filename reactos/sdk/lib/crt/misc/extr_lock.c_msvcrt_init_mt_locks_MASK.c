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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _LOCKTAB_LOCK ; 
 int _TOTAL_LOCKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
  int i;

  FUNC0( "initializing mtlocks\n" );

  /* Initialize the table */
  for( i=0; i < _TOTAL_LOCKS; i++ )
  {
    FUNC2( i, FALSE );
  }

  /* Initialize our lock table lock */
  FUNC1( _LOCKTAB_LOCK );
}