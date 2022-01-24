#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {scalar_t__ i_buffer_tcp; int i_command; scalar_t__ buffer_tcp; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 size_t MMS_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    for( ;; )
    {
        size_t i_used;
        int i_status;

        if( FUNC0( p_access ) < 0 )
        {
            FUNC4( p_access, "cannot fill buffer" );
            return VLC_EGENERIC;
        }
        if( p_sys->i_buffer_tcp > 0 )
        {
            i_status = FUNC3( p_access, p_sys->buffer_tcp,
                                         p_sys->i_buffer_tcp, &i_used );
            if( i_used < MMS_BUFFER_SIZE )
            {
                FUNC1( p_sys->buffer_tcp, p_sys->buffer_tcp + i_used,
                         MMS_BUFFER_SIZE - i_used );
            }
            p_sys->i_buffer_tcp -= i_used;

            if( i_status < 0 )
            {
                return VLC_EGENERIC;
            }

            if( p_sys->i_command == 0x1b )
            {
                FUNC2( p_access, 0x1b, 0, 0, NULL, 0 );
            }
            else
            {
                break;
            }
        }
        else
        {
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}