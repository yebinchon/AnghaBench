
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int * soxr_t ;
struct TYPE_22__ {scalar_t__ i_rate; } ;
struct TYPE_23__ {TYPE_3__ audio; } ;
struct TYPE_20__ {double i_rate; } ;
struct TYPE_21__ {TYPE_1__ audio; } ;
struct TYPE_24__ {TYPE_4__ fmt_in; TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_25__ {double const f_fixed_ratio; size_t const i_last_olen; int * soxr; int * last_soxr; int * vr_soxr; } ;
typedef TYPE_6__ filter_sys_t ;
struct TYPE_26__ {unsigned int i_nb_samples; int i_pts; } ;
typedef TYPE_7__ block_t ;


 size_t SoXR_GetOutLen (unsigned int,double const) ;
 TYPE_7__* SoXR_Resample (TYPE_5__*,int *,TYPE_7__*,size_t const) ;
 int assert (int) ;
 int block_ChainAppend (TYPE_7__**,TYPE_7__*) ;
 TYPE_7__* block_ChainGather (TYPE_7__*) ;
 int block_Release (TYPE_7__*) ;
 int msg_Dbg (TYPE_5__*,char*,int ) ;
 int soxr_engine (int *) ;
 int soxr_set_io_ratio (int *,int,size_t const) ;

__attribute__((used)) static block_t *
Resample( filter_t *p_filter, block_t *p_in )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    const vlc_tick_t i_pts = p_in->i_pts;

    if( p_sys->vr_soxr )
    {




        soxr_t soxr;
        block_t *p_flushed_out = ((void*)0), *p_out = ((void*)0);
        const double f_ratio = p_filter->fmt_out.audio.i_rate
                             / (double) p_filter->fmt_in.audio.i_rate;
        const size_t i_olen = SoXR_GetOutLen( p_in->i_nb_samples, f_ratio );

        if( f_ratio != p_sys->f_fixed_ratio )
        {

            soxr_set_io_ratio( p_sys->vr_soxr, 1 / f_ratio, i_olen );
            soxr = p_sys->vr_soxr;
        }
        else if( f_ratio == 1.0f )
        {

            soxr = ((void*)0);
            p_out = p_in;
        }
        else
        {

            soxr = p_sys->soxr;
        }


        if( p_sys->last_soxr && soxr != p_sys->last_soxr && p_sys->i_last_olen )
        {
            p_flushed_out = SoXR_Resample( p_filter, p_sys->last_soxr,
                                           ((void*)0), p_sys->i_last_olen );
            if( soxr )
                msg_Dbg( p_filter, "Using '%s' engine", soxr_engine( soxr ) );
        }

        if( soxr )
        {
            assert( !p_out );
            p_out = SoXR_Resample( p_filter, soxr, p_in, i_olen );
            if( !p_out )
                goto error;
        }

        if( p_flushed_out )
        {

            const unsigned i_nb_samples = p_flushed_out->i_nb_samples
                                        + p_out->i_nb_samples;

            block_ChainAppend( &p_flushed_out, p_out );
            p_out = block_ChainGather( p_flushed_out );
            if( !p_out )
                goto error;
            p_out->i_nb_samples = i_nb_samples;
        }
        p_out->i_pts = i_pts;
        return p_out;
    }
    else
    {


        const size_t i_olen = SoXR_GetOutLen( p_in->i_nb_samples,
                                              p_sys->f_fixed_ratio );
        block_t *p_out = SoXR_Resample( p_filter, p_sys->soxr, p_in, i_olen );
        if( p_out )
            p_out->i_pts = i_pts;
        return p_out;
    }
error:
    block_Release( p_in );
    return ((void*)0);
}
