#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int i_data; int /*<<< orphan*/  p_data; } ;
typedef  TYPE_1__ var_buffer_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_13__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_14__ {int i_seq_num; int /*<<< orphan*/  lock_netwrite; int /*<<< orphan*/  i_handle_tcp; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int MMS_CMD_HEADERSIZE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9( stream_t *p_access, int i_command,
                            uint32_t i_prefix1, uint32_t i_prefix2,
                            uint8_t *p_data, int i_data_old )
{
    var_buffer_t buffer;
    access_sys_t *p_sys = p_access->p_sys;
    int i_data_by8, i_ret;
    int i_data = i_data_old;

    while( i_data & 0x7 ) i_data++;
    i_data_by8 = i_data >> 3;

    /* first init buffer */
    FUNC6( &buffer, 0 );

    FUNC2( &buffer, 0x00000001 );    /* start sequence */
    FUNC2( &buffer, 0xB00BFACE );
    /* size after protocol type */
    FUNC2( &buffer, i_data + MMS_CMD_HEADERSIZE - 16 );
    FUNC2( &buffer, 0x20534d4d );    /* protocol "MMS " */
    FUNC2( &buffer, i_data_by8 + 4 );
    FUNC2( &buffer, p_sys->i_seq_num ); p_sys->i_seq_num++;
    FUNC3( &buffer, 0 );
    FUNC2( &buffer, i_data_by8 + 2 );
    FUNC2( &buffer, 0x00030000 | i_command ); /* dir | command */
    FUNC2( &buffer, i_prefix1 );    /* command specific */
    FUNC2( &buffer, i_prefix2 );    /* command specific */

    /* specific command data */
    if( p_data && i_data > 0 )
    {
        FUNC4( &buffer, p_data, i_data_old );
    }

    /* Append padding to the command data */
    FUNC3( &buffer, 0 );

    /* send it */
    FUNC7( &p_sys->lock_netwrite );
    i_ret = FUNC1( p_access, p_sys->i_handle_tcp, buffer.p_data,
                       buffer.i_data - ( 8 - ( i_data - i_data_old ) ) );
    FUNC8( &p_sys->lock_netwrite );

    if( i_ret != buffer.i_data - ( 8 - ( i_data - i_data_old ) ) )
    {
        FUNC5( &buffer );
        FUNC0( p_access, "failed to send command" );
        return VLC_EGENERIC;
    }

    FUNC5( &buffer );
    return VLC_SUCCESS;
}