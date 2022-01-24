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
typedef  int ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_fd; int /*<<< orphan*/  p_session; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2( stream_t *p_access, void *p_buffer, size_t i_len )
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_read;

    i_read = FUNC1( p_sys->p_session, p_sys->i_fd, p_buffer, i_len );
    if( i_read < 0 )
    {
        FUNC0( p_access, "read failed" );
        return -1;
    }

    return i_read;
}