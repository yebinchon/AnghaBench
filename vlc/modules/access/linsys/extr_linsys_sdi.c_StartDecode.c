
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct block_extension_t {int dummy; } ;
struct TYPE_13__ {int i_width; int i_height; int i_sar_num; int i_sar_den; int i_frame_rate_base; int i_frame_rate; } ;
struct TYPE_14__ {int i_id; int i_extra; int* p_extra; TYPE_1__ video; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_15__ {int out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_16__ {int i_block_size; int i_width; int i_height; int i_id_video; int i_forced_aspect; int i_aspect; char* psz_telx; int i_telx_line; int i_telx_count; char* psz_telx_lang; void* p_es_telx; scalar_t__ b_vbi; void* p_es_video; int i_frame_rate_base; int i_frame_rate; int i_incr; int i_next_date; } ;
typedef TYPE_4__ demux_sys_t ;


 scalar_t__ InitTelx (TYPE_3__*) ;
 scalar_t__ InitWSS (TYPE_3__*) ;
 scalar_t__ NewFrame (TYPE_3__*) ;
 int SPU_ES ;
 int START_DATE ;
 int VIDEO_ES ;
 int VLC_CODEC_I420 ;
 int VLC_CODEC_TELETEXT ;
 int VLC_ENOMEM ;
 scalar_t__ VLC_SUCCESS ;
 int VOUT_ASPECT_FACTOR ;
 int es_format_Init (TYPE_2__*,int ,int ) ;
 void* es_out_Add (int ,TYPE_2__*) ;
 int msg_Dbg (TYPE_3__*,char*,int,int,int,int) ;
 int msg_Warn (TYPE_3__*,char*) ;
 int* realloc (int*,int) ;
 char* strchr (char*,char) ;
 int strtol (char*,char**,int ) ;
 int vlc_tick_from_samples (int ,int ) ;

__attribute__((used)) static int StartDecode( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    es_format_t fmt;
    char *psz_parser;

    p_sys->i_next_date = START_DATE;
    p_sys->i_incr = vlc_tick_from_samples(p_sys->i_frame_rate_base, p_sys->i_frame_rate);
    p_sys->i_block_size = p_sys->i_width * p_sys->i_height * 3 / 2
                           + sizeof(struct block_extension_t);
    if( NewFrame( p_demux ) != VLC_SUCCESS )
        return VLC_ENOMEM;


    es_format_Init( &fmt, VIDEO_ES, VLC_CODEC_I420 );
    fmt.i_id = p_sys->i_id_video;
    fmt.video.i_frame_rate = p_sys->i_frame_rate;
    fmt.video.i_frame_rate_base = p_sys->i_frame_rate_base;
    fmt.video.i_width = p_sys->i_width;
    fmt.video.i_height = p_sys->i_height;
    int i_aspect = p_sys->i_forced_aspect ? p_sys->i_forced_aspect
                                          : p_sys->i_aspect;
    fmt.video.i_sar_num = i_aspect * fmt.video.i_height
                           / fmt.video.i_width;
    fmt.video.i_sar_den = VOUT_ASPECT_FACTOR;
    p_sys->p_es_video = es_out_Add( p_demux->out, &fmt );

    if ( p_sys->b_vbi && InitWSS( p_demux ) != VLC_SUCCESS )
        p_sys->b_vbi = 0;


    psz_parser = p_sys->psz_telx;
    if ( psz_parser != ((void*)0) && *psz_parser )
    {
        if ( !p_sys->b_vbi )
        {
            msg_Warn( p_demux, "VBI is unsupported on this input stream" );
        }
        else
        {
            int i_id;
            char *psz_next = strchr( psz_parser, '=' );
            if ( psz_next != ((void*)0) )
            {
                *psz_next = '\0';
                i_id = strtol( psz_parser, ((void*)0), 0 );
                psz_parser = psz_next + 1;
            }
            else
                i_id = 0;

            psz_next = strchr( psz_parser, '-' );
            if ( psz_next != ((void*)0) )
                *psz_next++ = '\0';

            p_sys->i_telx_line = strtol( psz_parser, ((void*)0), 0 ) - 1;
            if ( psz_next != ((void*)0) )
                p_sys->i_telx_count = strtol( psz_next, ((void*)0), 0 )
                                       - p_sys->i_telx_line - 1 + 1;
            else
                p_sys->i_telx_count = 1;

            if ( InitTelx( p_demux ) == VLC_SUCCESS )
            {
                int i_dr_size = 0;
                uint8_t *p_dr = ((void*)0);

                msg_Dbg( p_demux, "capturing VBI lines %d-%d and %d-%d",
                         p_sys->i_telx_line + 1,
                         p_sys->i_telx_line + 1 + p_sys->i_telx_count - 1,
                         p_sys->i_telx_line + 1 + 313,
                         p_sys->i_telx_line + 1 + 313
                                                + p_sys->i_telx_count - 1 );

                es_format_Init( &fmt, SPU_ES, VLC_CODEC_TELETEXT );
                fmt.i_id = i_id;


                psz_parser = p_sys->psz_telx_lang;

                while ( (psz_next = strchr( psz_parser, '=' )) != ((void*)0) )
                {
                    int i_page;
                    *psz_next++ = '\0';
                    if ( !psz_next[0] || !psz_next[1] || !psz_next[2] )
                        break;
                    i_page = strtol( psz_parser, ((void*)0), 0 );
                    i_dr_size += 5;
                    p_dr = realloc( p_dr, i_dr_size );
                    p_dr[i_dr_size - 5] = *psz_next++;
                    p_dr[i_dr_size - 4] = *psz_next++;
                    p_dr[i_dr_size - 3] = *psz_next++;
                    if ( *psz_next == '/' )
                    {
                        psz_next++;
                        p_dr[i_dr_size - 2] = strtol( psz_next, &psz_next, 0 )
                                               << 3;
                    }
                    else
                        p_dr[i_dr_size - 2] = 0x5 << 3;
                    p_dr[i_dr_size - 2] |= (i_page / 100) & 0x7;
                    p_dr[i_dr_size - 1] = i_page % 100;

                    if ( *psz_next == ',' )
                        psz_next++;
                    psz_parser = psz_next;
                }

                fmt.i_extra = i_dr_size;
                fmt.p_extra = p_dr;
                p_sys->p_es_telx = es_out_Add( p_demux->out, &fmt );
            }
            else
                p_sys->i_telx_count = 0;
        }
    }
    return VLC_SUCCESS;
}
