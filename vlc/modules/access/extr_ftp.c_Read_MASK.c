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
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  offset; int /*<<< orphan*/ * data; int /*<<< orphan*/  out; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC4( stream_t *p_access, void *p_buffer, size_t i_len )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->data == NULL )
        return 0;
    FUNC0( !p_sys->out );

    ssize_t i_read = FUNC3( p_sys->data, p_buffer, i_len, false );
    if( i_read >= 0 )
        p_sys->offset += i_read;
    else if( errno != EINTR && errno != EAGAIN )
    {
        FUNC1( p_access, "receive error: %s", FUNC2(errno) );
        i_read = 0;
    }

    return i_read;
}