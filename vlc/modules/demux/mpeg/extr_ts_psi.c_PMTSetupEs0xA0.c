
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* i_height; void* i_visible_height; void* i_width; void* i_visible_width; } ;
struct TYPE_10__ {scalar_t__ i_extra; int b_packetized; scalar_t__ p_extra; TYPE_1__ video; } ;
struct TYPE_9__ {TYPE_3__ fmt; } ;
typedef TYPE_2__ ts_es_t ;
typedef TYPE_3__ es_format_t ;
typedef int dvbpsi_pmt_es_t ;
struct TYPE_11__ {int i_length; int * p_data; } ;
typedef TYPE_4__ dvbpsi_descriptor_t ;
typedef int demux_t ;


 void* GetWBE (int *) ;
 TYPE_4__* PMTEsFindDescriptor (int const*,int) ;
 int VIDEO_ES ;
 int VLC_FOURCC (int ,int ,int ,int ) ;
 int __MIN (scalar_t__,int) ;
 int es_format_Change (TYPE_3__*,int ,int ) ;
 scalar_t__ malloc (scalar_t__) ;
 int memcpy (scalar_t__,int *,int ) ;
 int msg_Warn (int *,char*) ;

__attribute__((used)) static void PMTSetupEs0xA0( demux_t *p_demux, ts_es_t *p_es,
                           const dvbpsi_pmt_es_t *p_dvbpsies )
{

    dvbpsi_descriptor_t *p_dr = PMTEsFindDescriptor( p_dvbpsies, 0xa0 );
    if( !p_dr || p_dr->i_length < 10 )
    {
        msg_Warn( p_demux,
                  "private MSCODEC (vlc) without bih private descriptor" );
        return;
    }

    es_format_t *p_fmt = &p_es->fmt;
    es_format_Change( &p_es->fmt, VIDEO_ES,
                      VLC_FOURCC( p_dr->p_data[0], p_dr->p_data[1],
                                 p_dr->p_data[2], p_dr->p_data[3] ) );
    p_fmt->video.i_width = GetWBE( &p_dr->p_data[4] );
    p_fmt->video.i_height = GetWBE( &p_dr->p_data[6] );
    p_fmt->video.i_visible_width = p_fmt->video.i_width;
    p_fmt->video.i_visible_height = p_fmt->video.i_height;
    p_fmt->i_extra = GetWBE( &p_dr->p_data[8] );

    if( p_fmt->i_extra > 0 )
    {
        p_fmt->p_extra = malloc( p_fmt->i_extra );
        if( p_fmt->p_extra )
            memcpy( p_fmt->p_extra, &p_dr->p_data[10],
                    __MIN( p_fmt->i_extra, p_dr->i_length - 10 ) );
        else
            p_fmt->i_extra = 0;
    }



    p_fmt->b_packetized = 1;
}
