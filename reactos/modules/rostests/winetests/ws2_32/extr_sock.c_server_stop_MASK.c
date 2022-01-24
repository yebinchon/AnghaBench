#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ s; TYPE_1__* sock; } ;
typedef  TYPE_2__ server_memory ;
struct TYPE_5__ {scalar_t__ s; TYPE_2__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int MAX_CLIENTS ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  tls ; 

__attribute__((used)) static void FUNC6 (void)
{
    int i;
    server_memory *mem = FUNC3 ( tls );

    for (i = 0; i < MAX_CLIENTS; i++ )
    {
        FUNC2 ( mem->sock[i].buf );
        if ( mem->sock[i].s != INVALID_SOCKET )
            FUNC4 ( mem->sock[i].s );
    }
    FUNC5 ( FUNC4 ( mem->s ) == 0, "closesocket failed\n" );
    FUNC2 ( mem );
    FUNC0 ( FUNC1 () );
}