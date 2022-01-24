#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * fd; } ;
struct TYPE_5__ {TYPE_1__ listen; int /*<<< orphan*/  p_stream; } ;
typedef  TYPE_2__ sout_stream_id_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 

__attribute__((used)) static void *FUNC6( void *data )
{
    sout_stream_id_sys_t *id = data;

    FUNC0( id->listen.fd != NULL );

    for( ;; )
    {
        int fd = FUNC1( id->p_stream, id->listen.fd );
        if( fd == -1 )
            continue;
        int canc = FUNC5( );
        FUNC2( id, fd, true, NULL );
        FUNC4( canc );
    }

    FUNC3();
}