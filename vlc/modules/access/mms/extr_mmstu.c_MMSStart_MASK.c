#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  i_data; int /*<<< orphan*/  p_data; } ;
typedef  TYPE_1__ var_buffer_t ;
typedef  int uint32_t ;
struct TYPE_16__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_17__ {int i_media_packet_id_type; int i_command; int /*<<< orphan*/  i_command_level; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  MMS_PACKET_MEDIA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10( stream_t  *p_access, uint32_t i_packet )
{
    access_sys_t        *p_sys = p_access->p_sys;
    var_buffer_t    buffer;

    /* *** start stream from packet 0 *** */
    FUNC9( &buffer, 0 );
    FUNC6( &buffer, 0 ); /* seek point in second */
    FUNC5( &buffer, 0xffffffff );
    FUNC5( &buffer, i_packet ); // begin from start
    FUNC7( &buffer, 0xff ); // stream time limit
    FUNC7( &buffer, 0xff ); //  on 3bytes ...
    FUNC7( &buffer, 0xff ); //
    FUNC7( &buffer, 0x00 ); // don't use limit
    FUNC5( &buffer, p_sys->i_media_packet_id_type );

    FUNC1( p_access, 0x07, p_sys->i_command_level, 0x0001ffff,
                     buffer.p_data, buffer.i_data );

    FUNC8( &buffer );

    FUNC0( p_access, 0x05, 0 );

    if( p_sys->i_command != 0x05 )
    {
        FUNC4( p_access,
                 "unknown answer (0x%x instead of 0x05)",
                 p_sys->i_command );
        return -1;
    }
    else
    {
        /* get a packet */
        if( FUNC2( p_access, MMS_PACKET_MEDIA ) < 0 )
            return -1;
        FUNC3( p_access, "streaming started" );
        return 0;
    }
}