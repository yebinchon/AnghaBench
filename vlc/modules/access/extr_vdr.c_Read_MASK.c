#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_11__ {int fd; int i_current_file; int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FILE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC10( stream_t *p_access, void *p_buffer, size_t i_len )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->fd == -1 )
        /* no more data */
        return 0;

    ssize_t i_ret = FUNC6( p_sys->fd, p_buffer, i_len );

    if( i_ret > 0 )
    {
        /* success */
        p_sys->offset += i_ret;
        FUNC3( p_access );
        FUNC0( p_access );
        return i_ret;
    }
    else if( i_ret == 0 )
    {
        /* check for new files in case the recording is still active */
        if( p_sys->i_current_file >= FILE_COUNT - 1 )
            FUNC1( p_access );
        /* play next file */
        FUNC2( p_access, p_sys->i_current_file + 1 );
        return -1;
    }
    else if( errno == EINTR )
    {
        /* try again later */
        return -1;
    }
    else
    {
        /* abort on read error */
        FUNC5( p_access, "failed to read (%s)", FUNC9(errno) );
        FUNC7( p_access, FUNC4("File reading failed"),
            FUNC4("VLC could not read the file (%s)."),
            FUNC8(errno) );
        FUNC2( p_access, -1 );
        return 0;
    }
}