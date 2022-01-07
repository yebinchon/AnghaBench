
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef int vlc_fourcc_t ;
struct TYPE_16__ {int bitsPerPixel; int redShift; int greenShift; int blueShift; int redMax; int greenMax; int blueMax; } ;
struct TYPE_18__ {int width; int height; TYPE_1__ format; } ;
typedef TYPE_3__ rfbClient ;
typedef int rfbBool ;
struct TYPE_17__ {int i_chroma; int i_visible_width; int i_width; int i_visible_height; int i_height; int i_frame_rate_base; int i_frame_rate; int i_bits_per_pixel; int i_rmask; int i_gmask; int i_bmask; int i_sar_num; int i_sar_den; } ;
struct TYPE_19__ {TYPE_2__ video; } ;
typedef TYPE_4__ es_format_t ;
struct TYPE_20__ {int out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ demux_t ;
struct TYPE_21__ {int i_framebuffersize; int f_fps; int * es; TYPE_11__* p_block; } ;
typedef TYPE_6__ demux_sys_t ;
struct TYPE_15__ {int i_buffer; } ;


 int DemuxThread ;
 int FALSE ;
 int SetFormatAndEncodings (TYPE_3__*) ;
 int TRUE ;
 int VIDEO_ES ;



 int VLC_CODEC_RGB8 ;
 TYPE_11__* block_Alloc (int) ;
 TYPE_11__* block_Realloc (TYPE_11__*,int ,int) ;
 int es_format_Init (TYPE_4__*,int ,int) ;
 int * es_out_Add (int ,TYPE_4__*) ;
 int es_out_Del (int ,int *) ;
 scalar_t__ rfbClientGetClientData (TYPE_3__*,int ) ;

__attribute__((used)) static rfbBool mallocFrameBufferHandler( rfbClient* p_client )
{
    vlc_fourcc_t i_chroma;
    demux_t *p_demux = (demux_t *) rfbClientGetClientData( p_client, DemuxThread );
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( p_sys->es )
    {
        es_out_Del( p_demux->out, p_sys->es );
        p_sys->es = ((void*)0);
    }

    int i_width = p_client->width;
    int i_height = p_client->height;
    int i_depth = p_client->format.bitsPerPixel;

    switch( i_depth )
    {
        case 8:
            i_chroma = VLC_CODEC_RGB8;
            break;
        default:
        case 16:
            i_chroma = 130;
            break;
        case 24:
            i_chroma = 129;
            break;
        case 32:
            i_chroma = 128;
            break;
    }

    switch( i_chroma )
    {
        case 130:
            p_client->format.redShift = 11;
            p_client->format.greenShift = 5;
            p_client->format.blueShift = 0;
            p_client->format.redMax = 0x1f;
            p_client->format.greenMax = 0x3f;
            p_client->format.blueMax = 0x1f;
            break;
        case 129:
        case 128:
            p_client->format.redShift = 16;
            p_client->format.greenShift = 8;
            p_client->format.blueShift = 0;
            p_client->format.redMax = 0xff;
            p_client->format.greenMax = 0xff;
            p_client->format.blueMax = 0xff;
            break;
    }


    p_sys->i_framebuffersize = i_width * i_height * i_depth / 8;


    if ( p_sys->p_block )
        p_sys->p_block = block_Realloc( p_sys->p_block, 0, p_sys->i_framebuffersize );
    else
        p_sys->p_block = block_Alloc( p_sys->i_framebuffersize );

    if ( p_sys->p_block )
        p_sys->p_block->i_buffer = p_sys->i_framebuffersize;
    else
        return FALSE;


    SetFormatAndEncodings( p_client );


    es_format_t fmt;
    es_format_Init( &fmt, VIDEO_ES, i_chroma );


    fmt.video.i_chroma = i_chroma;
    fmt.video.i_visible_width =
            fmt.video.i_width = i_width;

    fmt.video.i_visible_height =
            fmt.video.i_height = i_height;

    fmt.video.i_frame_rate_base = 1000;
    fmt.video.i_frame_rate = 1000 * p_sys->f_fps;

    fmt.video.i_bits_per_pixel = i_depth;
    fmt.video.i_rmask = p_client->format.redMax << p_client->format.redShift;
    fmt.video.i_gmask = p_client->format.greenMax << p_client->format.greenShift;
    fmt.video.i_bmask = p_client->format.blueMax << p_client->format.blueShift;

    fmt.video.i_sar_num = fmt.video.i_sar_den = 1;


    p_sys->es = es_out_Add( p_demux->out, &fmt );

    return TRUE;
}
