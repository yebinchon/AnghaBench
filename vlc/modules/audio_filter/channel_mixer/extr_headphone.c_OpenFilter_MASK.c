#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_17__ {int i_physical_channels; int i_chan_mode; int /*<<< orphan*/  i_rate; void* i_format; } ;
struct TYPE_14__ {TYPE_9__ audio; } ;
struct TYPE_13__ {TYPE_9__ audio; } ;
struct TYPE_15__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; int /*<<< orphan*/  pf_audio_filter; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_16__ {int /*<<< orphan*/ * p_atomic_operations; scalar_t__ i_nb_atomic_operations; int /*<<< orphan*/ * p_overflow_buffer; scalar_t__ i_overflow_buffer_size; } ;
typedef  TYPE_4__ filter_sys_t ;

/* Variables and functions */
 int AOUT_CHANMODE_DOLBYSTEREO ; 
 scalar_t__ AOUT_CHANS_5_0 ; 
 scalar_t__ AOUT_CHANS_STEREO ; 
 int AOUT_CHAN_LEFT ; 
 int AOUT_CHAN_RIGHT ; 
 int /*<<< orphan*/  Convert ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* VLC_CODEC_FL32 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC8( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;

    /* Activate this filter only with stereo devices */
    if( p_filter->fmt_out.audio.i_physical_channels
            != (AOUT_CHAN_LEFT|AOUT_CHAN_RIGHT) )
    {
        FUNC6( p_filter, "filter discarded (incompatible format)" );
        return VLC_EGENERIC;
    }

    /* Allocate the memory needed to store the module's structure */
    p_sys = p_filter->p_sys = FUNC5( sizeof(filter_sys_t) );
    if( p_sys == NULL )
        return VLC_ENOMEM;
    p_sys->i_overflow_buffer_size = 0;
    p_sys->p_overflow_buffer = NULL;
    p_sys->i_nb_atomic_operations = 0;
    p_sys->p_atomic_operations = NULL;

    if( FUNC0( FUNC1(p_filter), p_sys
                , FUNC2 ( &(p_filter->fmt_in.audio) )
                , p_filter->fmt_in.audio.i_physical_channels
                , p_filter->fmt_in.audio.i_rate ) < 0 )
    {
        FUNC4( p_sys );
        return VLC_EGENERIC;
    }

    /* Request a specific format if not already compatible */
    p_filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio.i_rate = p_filter->fmt_in.audio.i_rate;
    p_filter->fmt_in.audio.i_chan_mode =
                                   p_filter->fmt_out.audio.i_chan_mode;
    if( p_filter->fmt_in.audio.i_physical_channels == AOUT_CHANS_STEREO
     && (p_filter->fmt_in.audio.i_chan_mode & AOUT_CHANMODE_DOLBYSTEREO)
     && !FUNC7( p_filter, "headphone-dolby" ) )
    {
        p_filter->fmt_in.audio.i_physical_channels = AOUT_CHANS_5_0;
    }
    p_filter->pf_audio_filter = Convert;

    FUNC3(&p_filter->fmt_in.audio);
    FUNC3(&p_filter->fmt_out.audio);

    return VLC_SUCCESS;
}