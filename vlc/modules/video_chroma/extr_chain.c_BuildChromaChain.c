
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_17__ {scalar_t__ const i_codec; } ;
struct TYPE_13__ {scalar_t__ const i_codec; } ;
struct TYPE_14__ {TYPE_8__ fmt_in; TYPE_1__ fmt_out; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_16__ {scalar_t__ i_chroma; scalar_t__ i_bmask; scalar_t__ i_gmask; scalar_t__ i_rmask; } ;
struct TYPE_15__ {scalar_t__ i_codec; TYPE_4__ video; } ;
typedef TYPE_3__ es_format_t ;


 int CreateChain (TYPE_2__*,TYPE_3__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int es_format_Clean (TYPE_3__*) ;
 int es_format_Copy (TYPE_3__*,TYPE_8__*) ;
 scalar_t__* get_allowed_chromas (TYPE_2__*) ;
 int msg_Dbg (TYPE_2__*,char*,char*) ;
 int video_format_FixRgb (TYPE_4__*) ;

__attribute__((used)) static int BuildChromaChain( filter_t *p_filter )
{
    es_format_t fmt_mid;
    int i_ret = VLC_EGENERIC;


    const vlc_fourcc_t *pi_allowed_chromas = get_allowed_chromas( p_filter );
    for( int i = 0; pi_allowed_chromas[i]; i++ )
    {
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

        i_ret = CreateChain( p_filter, &fmt_mid );
        es_format_Clean( &fmt_mid );

        if( i_ret == VLC_SUCCESS )
            break;
    }

    return i_ret;
}
