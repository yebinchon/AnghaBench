#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {scalar_t__ i_proto; scalar_t__ i_header; int /*<<< orphan*/  p_header; int /*<<< orphan*/  p_media; int /*<<< orphan*/  p_cmd; int /*<<< orphan*/  i_handle_udp; int /*<<< orphan*/  i_handle_tcp; int /*<<< orphan*/  i_command_level; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMS_PROTO_UDP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( stream_t  *p_access )
{
    access_sys_t        *p_sys = p_access->p_sys;

    FUNC2( p_access, "Connection closed" );

    /* *** tell server that we will disconnect *** */
    FUNC1( p_access,
                     0x0d,
                     p_sys->i_command_level,
                     0x00000001,
                     NULL, 0 );

    /* *** close sockets *** */
    FUNC3( p_sys->i_handle_tcp );
    if( p_sys->i_proto == MMS_PROTO_UDP )
    {
        FUNC3( p_sys->i_handle_udp );
    }

    FUNC0( p_sys->p_cmd );
    FUNC0( p_sys->p_media );
    FUNC0( p_sys->p_header );
    p_sys->i_header = 0;
}