
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {int scanning; double sampling_rate; int bytes_per_line; double offset; int* start; int* count; int synchronous; int interlaced; int sampling_format; } ;
struct TYPE_8__ {int i_width; int rd_telx; int p_wss_buffer; TYPE_3__ rd_wss; } ;
typedef TYPE_2__ demux_sys_t ;


 int FALSE ;
 int TRUE ;
 int VBI_PIXFMT_UYVY ;
 int VBI_SLICED_WSS_625 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int malloc (int) ;
 int msg_Warn (TYPE_1__*,char*) ;
 scalar_t__ vbi_raw_decoder_add_services (TYPE_3__*,int ,int) ;
 int vbi_raw_decoder_destroy (int *) ;
 int vbi_raw_decoder_init (TYPE_3__*) ;

__attribute__((used)) static int InitWSS( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    vbi_raw_decoder_init( &p_sys->rd_wss );

    p_sys->rd_wss.scanning = 625;
    p_sys->rd_wss.sampling_format = VBI_PIXFMT_UYVY;
    p_sys->rd_wss.sampling_rate = 13.5e6;
    p_sys->rd_wss.bytes_per_line = 720 * 2;
    p_sys->rd_wss.offset = 9.5e-6 * 13.5e6;

    p_sys->rd_wss.start[0] = 23;
    p_sys->rd_wss.count[0] = 1;
    p_sys->rd_wss.start[1] = 0;
    p_sys->rd_wss.count[1] = 0;

    p_sys->rd_wss.interlaced = FALSE;
    p_sys->rd_wss.synchronous = TRUE;

    if ( vbi_raw_decoder_add_services( &p_sys->rd_wss,
                                       VBI_SLICED_WSS_625,
                                                    2 ) == 0 )
    {
        msg_Warn( p_demux, "cannot initialize zvbi for WSS" );
        vbi_raw_decoder_destroy ( &p_sys->rd_telx );
        return VLC_EGENERIC;
    }

    p_sys->p_wss_buffer = malloc( p_sys->i_width * 2 );
    if( !p_sys->p_wss_buffer )
    {
        vbi_raw_decoder_destroy ( &p_sys->rd_telx );
        return VLC_ENOMEM;
    }
    return VLC_SUCCESS;
}
