
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_19__ {int sct; int dsn; int fsc; int dbn; } ;
typedef TYPE_3__ dv_id_t ;
struct TYPE_20__ {int dsf; int apt; int tf1; int ap1; int tf2; int ap2; int tf3; int ap3; } ;
typedef TYPE_4__ dv_header_t ;
struct TYPE_17__ {int force; } ;
struct TYPE_21__ {int pf_control; int pf_demux; int out; TYPE_6__* p_sys; int s; TYPE_1__ obj; } ;
typedef TYPE_5__ demux_t ;
struct TYPE_18__ {int i_width; int i_height; int i_visible_width; int i_visible_height; } ;
struct TYPE_16__ {TYPE_2__ video; } ;
struct TYPE_22__ {int i_dsf; int f_rate; TYPE_12__ fmt_audio; int * p_es_audio; TYPE_12__ fmt_video; int * p_es_video; scalar_t__ i_bitrate; scalar_t__ i_pcr; scalar_t__ frame_size; scalar_t__ b_hurry_up; } ;
typedef TYPE_6__ demux_sys_t ;


 int Control ;
 scalar_t__ DV_NTSC_FRAME_SIZE ;
 scalar_t__ DV_PAL_FRAME_SIZE ;
 int Demux ;
 int GetDWBE (int const*) ;
 int VIDEO_ES ;
 int VLC_CODEC_DV ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int demux_IsPathExtension (TYPE_5__*,char*) ;
 int dv_get_audio_format (TYPE_12__*,int const*) ;
 int es_format_Init (TYPE_12__*,int ,int ) ;
 void* es_out_Add (int ,TYPE_12__*) ;
 TYPE_6__* malloc (int) ;
 int msg_Dbg (TYPE_5__*,char*,char*) ;
 int msg_Err (TYPE_5__*,char*) ;
 int msg_Warn (TYPE_5__*,char*) ;
 scalar_t__ var_CreateGetBool (TYPE_5__*,char*) ;
 scalar_t__ vlc_stream_Peek (int ,int const**,scalar_t__) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;

    const uint8_t *p_peek, *p_peek_backup;

    uint32_t i_dword;
    dv_header_t dv_header;
    dv_id_t dv_id;







    if( !demux_IsPathExtension( p_demux, ".dv" ) && !p_demux->obj.force )
        return VLC_EGENERIC;

    if( vlc_stream_Peek( p_demux->s, &p_peek, DV_PAL_FRAME_SIZE ) <
        DV_NTSC_FRAME_SIZE )
    {

        msg_Err( p_demux, "cannot peek()" );
        return VLC_EGENERIC;
    }
    p_peek_backup = p_peek;


    i_dword = GetDWBE( p_peek ); p_peek += 4;
    dv_id.sct = i_dword >> (32 - 3);
    i_dword <<= 8;
    dv_id.dsn = i_dword >> (32 - 4);
    i_dword <<= 4;
    dv_id.fsc = i_dword >> (32 - 1);
    i_dword <<= 4;
    dv_id.dbn = i_dword >> (32 - 8);
    i_dword <<= 8;

    if( dv_id.sct != 0 )
    {
        msg_Warn( p_demux, "not a raw DV stream header" );
        return VLC_EGENERIC;
    }


    dv_header.dsf = i_dword >> (32 - 1);
    i_dword <<= 1;
    if( i_dword >> (32 - 1) )
    {
        msg_Warn( p_demux, "incorrect bit" );
        return VLC_EGENERIC;
    }

    i_dword = GetDWBE( p_peek ); p_peek += 4;
    i_dword <<= 5;
    dv_header.apt = i_dword >> (32 - 3);
    i_dword <<= 3;
    dv_header.tf1 = i_dword >> (32 - 1);
    i_dword <<= 5;
    dv_header.ap1 = i_dword >> (32 - 3);
    i_dword <<= 3;
    dv_header.tf2 = i_dword >> (32 - 1);
    i_dword <<= 5;
    dv_header.ap2 = i_dword >> (32 - 3);
    i_dword <<= 3;
    dv_header.tf3 = i_dword >> (32 - 1);
    i_dword <<= 5;
    dv_header.ap3 = i_dword >> (32 - 3);

    p_peek += 72;

    p_demux->p_sys = p_sys = malloc( sizeof( demux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->b_hurry_up = var_CreateGetBool( p_demux, "rawdv-hurry-up" );
    msg_Dbg( p_demux, "Realtime DV Source: %s", (p_sys->b_hurry_up)?"Yes":"No" );

    p_sys->i_dsf = dv_header.dsf;
    p_sys->frame_size = dv_header.dsf ? DV_PAL_FRAME_SIZE
                                      : DV_NTSC_FRAME_SIZE;
    p_sys->f_rate = dv_header.dsf ? 25 : 29.97;

    p_sys->i_pcr = 0;
    p_sys->p_es_video = ((void*)0);
    p_sys->p_es_audio = ((void*)0);

    p_sys->i_bitrate = 0;

    es_format_Init( &p_sys->fmt_video, VIDEO_ES, VLC_CODEC_DV );
    p_sys->fmt_video.video.i_width = 720;
    p_sys->fmt_video.video.i_height= dv_header.dsf ? 576 : 480;;
    p_sys->fmt_video.video.i_visible_width = p_sys->fmt_video.video.i_width;
    p_sys->fmt_video.video.i_visible_height = p_sys->fmt_video.video.i_height;

    p_sys->p_es_video = es_out_Add( p_demux->out, &p_sys->fmt_video );


    p_peek = p_peek_backup + 80*6+80*16*3 + 3;
    if( *p_peek == 0x50 )
    {
        dv_get_audio_format( &p_sys->fmt_audio, &p_peek[1] );
        p_sys->p_es_audio = es_out_Add( p_demux->out, &p_sys->fmt_audio );
    }

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    return VLC_SUCCESS;
}
