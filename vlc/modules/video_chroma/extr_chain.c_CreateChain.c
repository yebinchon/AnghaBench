
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ orientation; } ;
struct TYPE_18__ {TYPE_1__ video; } ;
struct TYPE_16__ {TYPE_4__ const fmt_out; TYPE_4__ const fmt_in; TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_17__ {int p_chain; } ;
typedef TYPE_3__ filter_sys_t ;
typedef TYPE_4__ es_format_t ;


 TYPE_2__* AppendTransform (int ,TYPE_4__ const*,TYPE_4__ const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ es_format_IsSimilar (TYPE_4__ const*,TYPE_4__ const*) ;
 scalar_t__ filter_chain_AppendConverter (int ,TYPE_4__ const*) ;
 int filter_chain_Clear (int ) ;
 int filter_chain_Reset (int ,TYPE_4__ const*,TYPE_4__ const*) ;

__attribute__((used)) static int CreateChain( filter_t *p_filter, const es_format_t *p_fmt_mid )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    filter_chain_Reset( p_sys->p_chain, &p_filter->fmt_in, &p_filter->fmt_out );

    if( p_filter->fmt_in.video.orientation != p_fmt_mid->video.orientation)
    {
        filter_t *p_transform = AppendTransform( p_sys->p_chain, &p_filter->fmt_in, p_fmt_mid );

        if( p_transform == ((void*)0) )
            return VLC_EGENERIC;
        if( es_format_IsSimilar(&p_transform->fmt_out, &p_filter->fmt_out ))
           return VLC_SUCCESS;
    }
    else
    {
        if( filter_chain_AppendConverter( p_sys->p_chain, p_fmt_mid ) )
            return VLC_EGENERIC;
    }

    if( p_fmt_mid->video.orientation != p_filter->fmt_out.video.orientation)
    {
        if( AppendTransform( p_sys->p_chain, p_fmt_mid,
                             &p_filter->fmt_out ) == ((void*)0) )
            goto error;
    }
    else
    {
        if( filter_chain_AppendConverter( p_sys->p_chain, &p_filter->fmt_out ) )
            goto error;
    }
    return VLC_SUCCESS;
error:

    filter_chain_Clear( p_sys->p_chain );
    return VLC_EGENERIC;
}
