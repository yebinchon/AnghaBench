
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_23__ {scalar_t__ const i_codec; } ;
struct TYPE_22__ {scalar_t__ const i_codec; } ;
struct TYPE_18__ {TYPE_8__ fmt_out; TYPE_7__ fmt_in; int pf_video_mouse; int p_cfg; int psz_name; TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_19__ {int p_chain; TYPE_9__* p_video_filter; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_21__ {scalar_t__ i_chroma; scalar_t__ i_bmask; scalar_t__ i_gmask; scalar_t__ i_rmask; } ;
struct TYPE_20__ {scalar_t__ i_codec; TYPE_4__ video; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_24__ {int * pf_video_mouse; } ;


 int ChainMouse ;
 int RestartFilterCallback ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int es_format_Clean (TYPE_3__*) ;
 int es_format_Copy (TYPE_3__*,TYPE_7__*) ;
 int filter_AddProxyCallbacks (TYPE_1__*,TYPE_9__*,int ) ;
 int filter_chain_AppendConverter (int ,TYPE_3__*) ;
 TYPE_9__* filter_chain_AppendFilter (int ,int ,int ,TYPE_3__*) ;
 int filter_chain_Reset (int ,TYPE_7__*,TYPE_8__*) ;
 scalar_t__* get_allowed_chromas (TYPE_1__*) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int video_format_FixRgb (TYPE_4__*) ;

__attribute__((used)) static int BuildFilterChain( filter_t *p_filter )
{
    es_format_t fmt_mid;
    int i_ret = VLC_EGENERIC;

    filter_sys_t *p_sys = p_filter->p_sys;


    const vlc_fourcc_t *pi_allowed_chromas = get_allowed_chromas( p_filter );
    for( int i = 0; pi_allowed_chromas[i]; i++ )
    {
        filter_chain_Reset( p_sys->p_chain, &p_filter->fmt_in, &p_filter->fmt_out );

        const vlc_fourcc_t i_chroma = pi_allowed_chromas[i];
        if( i_chroma == p_filter->fmt_in.i_codec ||
            i_chroma == p_filter->fmt_out.i_codec )
            continue;

        msg_Dbg( p_filter, "Trying to use chroma %4.4s as middle man",
                 (char*)&i_chroma );

        es_format_Copy( &fmt_mid, &p_filter->fmt_in );
        fmt_mid.i_codec =
        fmt_mid.video.i_chroma = i_chroma;
        fmt_mid.video.i_rmask = 0;
        fmt_mid.video.i_gmask = 0;
        fmt_mid.video.i_bmask = 0;
        video_format_FixRgb(&fmt_mid.video);

        if( filter_chain_AppendConverter( p_sys->p_chain,
                                          &fmt_mid ) == VLC_SUCCESS )
        {
            p_sys->p_video_filter =
                filter_chain_AppendFilter( p_sys->p_chain,
                                           p_filter->psz_name, p_filter->p_cfg,
                                           &fmt_mid );
            if( p_sys->p_video_filter )
            {
                filter_AddProxyCallbacks( p_filter,
                                          p_sys->p_video_filter,
                                          RestartFilterCallback );
                if (p_sys->p_video_filter->pf_video_mouse != ((void*)0))
                    p_filter->pf_video_mouse = ChainMouse;
                es_format_Clean( &fmt_mid );
                i_ret = VLC_SUCCESS;
                break;
            }
        }
        es_format_Clean( &fmt_mid );
    }
    if( i_ret != VLC_SUCCESS )
        filter_chain_Reset( p_sys->p_chain, &p_filter->fmt_in, &p_filter->fmt_out );

    return i_ret;
}
