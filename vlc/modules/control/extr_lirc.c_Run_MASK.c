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
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  i_fd; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 int FUNC1 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 

__attribute__((used)) static void *FUNC4( void *data )
{
    intf_thread_t *p_intf = data;
    intf_sys_t *p_sys = p_intf->p_sys;

    struct pollfd ufd;
    ufd.fd = p_sys->i_fd;
    ufd.events = POLLIN;

    for( ;; )
    {
        /* Wait for data */
        if( FUNC1( &ufd, 1, -1 ) == -1 )
        {
            if( errno == EINTR )
                continue;
            break;
        }

        /* Process */
        int canc = FUNC3();
        FUNC0( p_intf );
        FUNC2(canc);
    }
    return NULL;
}