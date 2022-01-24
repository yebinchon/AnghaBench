#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_3__ {scalar_t__ i_codec; int /*<<< orphan*/  (* pf_probe ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 TYPE_1__* p_codecs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    for( int i = 0; p_codecs[i].i_codec != 0; i++ )
    {
        uint64_t i_offset;
        if( !p_codecs[i].pf_probe( p_demux, &i_offset ) )
            return FUNC0( p_demux, AUDIO_ES, &p_codecs[i], i_offset );
    }
    return VLC_EGENERIC;
}