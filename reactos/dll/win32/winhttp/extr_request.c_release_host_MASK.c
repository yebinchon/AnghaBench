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
struct TYPE_4__ {struct TYPE_4__* hostname; int /*<<< orphan*/  connections; int /*<<< orphan*/  entry; scalar_t__ ref; } ;
typedef  TYPE_1__ hostdata_t ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connection_pool_cs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( hostdata_t *host )
{
    LONG ref;

    FUNC0( &connection_pool_cs );
    if (!(ref = --host->ref)) FUNC5( &host->entry );
    FUNC1( &connection_pool_cs );
    if (ref) return;

    FUNC2( FUNC4( &host->connections ) );
    FUNC3( host->hostname );
    FUNC3( host );
}