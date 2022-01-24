#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  soxr_quality_spec_t ;
typedef  int /*<<< orphan*/  soxr_io_spec_t ;
typedef  scalar_t__ soxr_error_t ;
typedef  int /*<<< orphan*/  soxr_datatype_t ;
typedef  size_t int64_t ;
struct TYPE_13__ {unsigned int i_channels; double i_rate; int /*<<< orphan*/  i_format; } ;
struct TYPE_14__ {TYPE_3__ audio; } ;
struct TYPE_11__ {unsigned int i_channels; scalar_t__ i_rate; int /*<<< orphan*/  i_format; } ;
struct TYPE_12__ {TYPE_1__ audio; } ;
struct TYPE_15__ {int /*<<< orphan*/  pf_audio_drain; int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_audio_filter; TYPE_6__* p_sys; TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef  TYPE_5__ filter_t ;
struct TYPE_16__ {double f_fixed_ratio; void* soxr; void* vr_soxr; } ;
typedef  TYPE_6__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Drain ; 
 int /*<<< orphan*/  Flush ; 
 size_t MAX_SOXR_QUALITY ; 
 int /*<<< orphan*/  Resample ; 
 unsigned long const SOXR_LQ ; 
 int /*<<< orphan*/  SOXR_VR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_6__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,scalar_t__,char const*,double) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,double const,unsigned int const,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long const,int /*<<< orphan*/ ) ; 
 unsigned long* soxr_resampler_quality_list ; 
 int /*<<< orphan*/ * soxr_resampler_quality_vlctext ; 
 int /*<<< orphan*/  FUNC10 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 size_t FUNC13 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC14( vlc_object_t *p_obj, bool b_change_ratio )
{
    filter_t *p_filter = (filter_t *)p_obj;

    /* Cannot remix */
    if( p_filter->fmt_in.audio.i_channels != p_filter->fmt_out.audio.i_channels )
        return VLC_EGENERIC;

    /* Get SoXR input/output format */
    soxr_datatype_t i_itype, i_otype;
    if( !FUNC0( p_filter->fmt_in.audio.i_format, &i_itype )
     || !FUNC0( p_filter->fmt_out.audio.i_format, &i_otype ) )
        return VLC_EGENERIC;

    filter_sys_t *p_sys = FUNC1( 1, sizeof( filter_sys_t ) );
    if( FUNC12( p_sys == NULL ) )
        return VLC_ENOMEM;

    /* Setup SoXR */
    int64_t i_vlc_q = FUNC13( p_obj, "soxr-resampler-quality" );
    if( i_vlc_q < 0 )
        i_vlc_q = 0;
    else if( i_vlc_q > MAX_SOXR_QUALITY )
        i_vlc_q = MAX_SOXR_QUALITY;
    const unsigned long i_recipe = soxr_resampler_quality_list[i_vlc_q];
    const unsigned i_channels = p_filter->fmt_in.audio.i_channels;
    const double f_ratio = p_filter->fmt_out.audio.i_rate
                           / (double) p_filter->fmt_in.audio.i_rate;

    p_sys->f_fixed_ratio = f_ratio;
    soxr_error_t error;
    /* IO spec */
    soxr_io_spec_t io_spec = FUNC8( i_itype, i_otype );
    /* Quality spec */
    soxr_quality_spec_t q_spec = FUNC9( i_recipe, 0 );
    /* Create SoXR */
    p_sys->soxr = FUNC5( 1, f_ratio, i_channels,
                               &error, &io_spec, &q_spec, NULL );
    if( error )
    {
        FUNC4( p_filter, "soxr_create failed: %s", FUNC11( error ) );
        FUNC2( p_sys );
        return VLC_EGENERIC;
    }

    /* Create a 'variable-rate' SoXR if needed: it is slower than the fixed
     * one, but it will be only used when the input rate is changing (to catch
     * up a delay).  */
    if( b_change_ratio )
    {
        q_spec = FUNC9( SOXR_LQ, SOXR_VR );
        p_sys->vr_soxr = FUNC5( 1, f_ratio, i_channels,
                                      &error, &io_spec, &q_spec, NULL );
        if( error )
        {
            FUNC4( p_filter, "soxr_create failed: %s", FUNC11( error ) );
            FUNC6( p_sys->soxr );
            FUNC2( p_sys );
            return VLC_EGENERIC;
        }
        FUNC10( p_sys->vr_soxr, 1 / f_ratio, 0 );
    }

    FUNC3( p_filter, "Using SoX Resampler with '%s' engine and '%s' quality "
             "to convert %4.4s/%dHz to %4.4s/%dHz.",
             FUNC7( p_sys->soxr ), soxr_resampler_quality_vlctext[i_vlc_q],
             (const char *)&p_filter->fmt_in.audio.i_format,
             p_filter->fmt_in.audio.i_rate,
             (const char *)&p_filter->fmt_out.audio.i_format,
             p_filter->fmt_out.audio.i_rate );

    p_filter->p_sys = p_sys;
    p_filter->pf_audio_filter = Resample;
    p_filter->pf_flush = Flush;
    p_filter->pf_audio_drain = Drain;
    return VLC_SUCCESS;
}