#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int fdc; int* fdv; int /*<<< orphan*/  interrupt; } ;
typedef  TYPE_1__ vlclua_dtable_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3( vlclua_dtable_t *dt )
{
    for( unsigned i = 0; i < dt->fdc; i++ )
        if( dt->fdv[i] != -1 )
            FUNC1( dt->fdv[i] );
    FUNC0( dt->fdv );
    FUNC2(dt->interrupt);
}