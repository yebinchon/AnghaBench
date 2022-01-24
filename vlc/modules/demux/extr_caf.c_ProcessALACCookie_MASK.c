#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  unsigned int const uint64_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_6__ {int i_extra; char* p_extra; } ;
struct TYPE_8__ {TYPE_1__ fmt; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC4( demux_t *p_demux, const uint8_t *p, uint64_t i_size )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    const unsigned int kALAC_NEW_KUKI_SIZE = 24;
    const unsigned int kALAC_LIB_REQ_KUKI_SIZE = 36;
    int i_extra;

    if( i_size == kALAC_NEW_KUKI_SIZE || i_size == kALAC_LIB_REQ_KUKI_SIZE )
    {
        i_extra = kALAC_LIB_REQ_KUKI_SIZE;
    }
    else
    {
        FUNC3( p_demux, "Unknown alac magic cookie. Passing it on to the decoder as is and hoping for the best." );
        i_extra = ( int )i_size;
    }

    p_sys->fmt.i_extra = i_extra;
    p_sys->fmt.p_extra = FUNC1( i_extra );

    if( !p_sys->fmt.p_extra )
        return VLC_ENOMEM;

    uint8_t *p_extra = ( uint8_t * )p_sys->fmt.p_extra;

    if( i_size == kALAC_NEW_KUKI_SIZE )
    {
        FUNC0( p_extra, 36 );
        FUNC2( p_extra + 4, "alac", 4 );
        FUNC0( p_extra + 8, 0 );
        FUNC2( p_extra + 12, p, 24 );
    }
    else
    {
        FUNC2( p_sys->fmt.p_extra, p, i_size );
    }

    return VLC_SUCCESS;
}