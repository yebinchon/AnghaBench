#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {int i_format; scalar_t__ i_channels; int /*<<< orphan*/  i_rate; } ;
struct TYPE_9__ {TYPE_3__ audio; } ;
struct TYPE_6__ {int i_format; scalar_t__ i_channels; scalar_t__ i_physical_channels; int /*<<< orphan*/  i_rate; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct TYPE_10__ {int /*<<< orphan*/  pf_audio_filter; int /*<<< orphan*/ * p_sys; TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef  TYPE_5__ filter_t ;
typedef  int /*<<< orphan*/  SpeexResamplerState ;

/* Variables and functions */
 int /*<<< orphan*/  Resample ; 
#define  VLC_CODEC_FL32 129 
#define  VLC_CODEC_S16N 128 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5 (vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;

    /* Cannot convert format */
    if (filter->fmt_in.audio.i_format != filter->fmt_out.audio.i_format
    /* Cannot remix */
     || filter->fmt_in.audio.i_channels != filter->fmt_out.audio.i_channels
     || filter->fmt_in.audio.i_physical_channels == 0 )
        return VLC_EGENERIC;

    switch (filter->fmt_in.audio.i_format)
    {
        case VLC_CODEC_FL32: break;
        case VLC_CODEC_S16N: break;
        default:             return VLC_EGENERIC;
    }

    SpeexResamplerState *st;

    unsigned q = FUNC4 (obj, "speex-resampler-quality");
    if (FUNC3(q > 10))
        q = 3;

    int err;
    st = FUNC1(filter->fmt_in.audio.i_channels,
                              filter->fmt_in.audio.i_rate,
                              filter->fmt_out.audio.i_rate, q, &err);
    if (FUNC3(st == NULL))
    {
        FUNC0 (obj, "cannot initialize resampler: %s",
                 FUNC2 (err));
        return VLC_ENOMEM;
    }

    filter->p_sys = st;
    filter->pf_audio_filter = Resample;
    return VLC_SUCCESS;
}