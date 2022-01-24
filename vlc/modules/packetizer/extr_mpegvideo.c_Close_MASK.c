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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_6__ {int /*<<< orphan*/  packetizer; scalar_t__ p_frame; scalar_t__ p_ext; scalar_t__ p_seq; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC5( vlc_object_t *p_this )
{
    decoder_t     *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->p_seq )
    {
        FUNC1( p_sys->p_seq );
    }
    if( p_sys->p_ext )
    {
        FUNC1( p_sys->p_ext );
    }
    if( p_sys->p_frame )
    {
        FUNC0( p_sys->p_frame );
    }
    FUNC3( &p_sys->packetizer );

    FUNC4( p_dec, "packetizer-mpegvideo-sync-iframe" );

    FUNC2( p_sys );
}