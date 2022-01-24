#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ bInit; int /*<<< orphan*/  crit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int _LOCKTAB_LOCK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* lock_table ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4( int locknum )
{
  FUNC1( "(%d)\n", locknum );

  /* If the lock doesn't exist yet, create it */
  if( lock_table[ locknum ].bInit == FALSE )
  {
    /* Lock while we're changing the lock table */
    FUNC4( _LOCKTAB_LOCK );

    /* Check again if we've got a bit of a race on lock creation */
    if( lock_table[ locknum ].bInit == FALSE )
    {
      FUNC1( ": creating lock #%d\n", locknum );
      FUNC3( locknum );
    }

    /* Unlock ourselves */
    FUNC2( _LOCKTAB_LOCK );
  }

  FUNC0( &(lock_table[ locknum ].crit) );
}