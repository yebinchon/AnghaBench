
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int i_stream_type; int i_pid; } ;
typedef TYPE_5__ tsmux_stream_t ;
typedef int ts_mux_standard ;
struct TYPE_16__ {int i_stream_id; int i_es_id; } ;
typedef TYPE_6__ pesmux_stream_t ;
struct TYPE_13__ {int i_id; } ;
struct TYPE_14__ {TYPE_3__ dvb; } ;
struct TYPE_12__ {int i_rate; int i_channels; } ;
struct TYPE_11__ {int i_frame_rate_base; int i_frame_rate; } ;
struct TYPE_17__ {int i_codec; TYPE_4__ subs; TYPE_2__ audio; TYPE_1__ video; } ;
typedef TYPE_7__ es_format_t ;


 int PES_EXTENDED_STREAM_ID ;
 int TS_MUX_STANDARD_ATSC ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int j2k_is_valid_framerate (int ,int ) ;

int FillPMTESParams( ts_mux_standard standard, const es_format_t *fmt,
                     tsmux_stream_t *ts, pesmux_stream_t *pes )
{
    switch( fmt->i_codec )
    {


    case 135:
    case 140:
    case 142:

        ts->i_stream_type = 0x02;
        pes->i_stream_id = 0xe0;
        break;
    case 137:
        ts->i_stream_type = 0x10;
        pes->i_stream_id = 0xe0;
        pes->i_es_id = ts->i_pid;
        break;
    case 145:
        ts->i_stream_type = 0x24;
        pes->i_stream_id = 0xe0;
        break;
    case 146:
        ts->i_stream_type = 0x1b;
        pes->i_stream_id = 0xe0;
        break;

    case 147:
    case 148:
    case 128:
    case 129:
    case 130:
    case 153:
    case 154:
    case 155:
    case 143:
        ts->i_stream_type = 0xa0;
        pes->i_stream_id = 0xa0;
        break;
    case 156:

        pes->i_stream_id = (PES_EXTENDED_STREAM_ID << 8) | 0x60;
        ts->i_stream_type = 0xd1;
        break;
    case 144:
        if( !j2k_is_valid_framerate( fmt->video.i_frame_rate,
                                     fmt->video.i_frame_rate_base ) )
            return VLC_EGENERIC;
        ts->i_stream_type = 0x21;
        pes->i_stream_id = 0xbd;
    break;



    case 136:
    case 141:
    case 139:
        ts->i_stream_type = fmt->audio.i_rate >= 32000 ? 0x03 : 0x04;
        pes->i_stream_id = 0xc0;
        break;
    case 157:
        pes->i_stream_id = 0xbd;
        if( standard == TS_MUX_STANDARD_ATSC )
        {
            ts->i_stream_type = 0x81;
        }
        else
        {
            ts->i_stream_type = 0x06;
        }
        break;
    case 150:
        ts->i_stream_type = 0x83;
        pes->i_stream_id = 0xbd;
        break;
    case 134:
        if (fmt->audio.i_channels > 8)
            return VLC_EGENERIC;
        pes->i_stream_id = 0xbd;
        pes->i_stream_id = 0x06;
        break;
    case 149:
        pes->i_stream_id = 0xbd;
        if( standard == TS_MUX_STANDARD_ATSC )
        {

            ts->i_stream_type = 0x87;
        }
        else
        {
            ts->i_stream_type = 0x06;
        }
        break;
    case 152:
        if( standard == TS_MUX_STANDARD_ATSC )
        {
            return VLC_EGENERIC;
        }
        else
        {
            ts->i_stream_type = 0x06;
            pes->i_stream_id = 0xbd;
        }
        break;
    case 138:



        ts->i_stream_type = 0x0f;
        pes->i_stream_id = 0xc0;
        pes->i_es_id = ts->i_pid;
        break;



    case 133:
        ts->i_stream_type = 0x82;
        pes->i_stream_id = 0xbd;
        break;
    case 132:
        ts->i_stream_type = 0x12;
        pes->i_stream_id = 0xfa;
        pes->i_es_id = ts->i_pid;
        break;
    case 151:
        ts->i_stream_type = 0x06;
        pes->i_es_id = fmt->subs.dvb.i_id;
        pes->i_stream_id = 0xbd;
        break;
    case 131:
        ts->i_stream_type = 0x06;
        pes->i_stream_id = 0xbd;
        break;

    default:
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
