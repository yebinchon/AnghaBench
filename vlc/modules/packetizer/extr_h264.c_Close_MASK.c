#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_ccs; int /*<<< orphan*/  packetizer; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int H264_PPS_ID_MAX ; 
 int H264_SPS_ID_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    int i;

    FUNC0( p_sys );
    for( i = 0; i <= H264_SPS_ID_MAX; i++ )
        FUNC2( p_sys, i, NULL, NULL );
    for( i = 0; i <= H264_PPS_ID_MAX; i++ )
        FUNC1( p_sys, i, NULL, NULL );

    FUNC5( &p_sys->packetizer );

    FUNC3( p_sys->p_ccs );

    FUNC4( p_sys );
}