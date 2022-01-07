
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ogg_int64_t ;
struct TYPE_6__ {int b_old; } ;
struct TYPE_7__ {TYPE_1__ dirac; } ;
struct TYPE_8__ {int i_codec; } ;
struct TYPE_9__ {int i_granule_shift; TYPE_2__ special; int b_oggds; int i_first_frame_index; TYPE_3__ fmt; } ;
typedef TYPE_4__ logical_stream_t ;
typedef int int64_t ;
__attribute__((used)) static int64_t Ogg_GranuleToSample( const logical_stream_t *p_stream, int64_t i_granule )
{
    switch( p_stream->fmt.i_codec )
    {
        case 130:
            if( p_stream->i_first_frame_index == 0 && !p_stream->b_oggds )
                i_granule++;

        case 137:
        case 134:
        {
            ogg_int64_t iframe = i_granule >> p_stream->i_granule_shift;
            ogg_int64_t pframe = i_granule - ( iframe << p_stream->i_granule_shift );
            return iframe + pframe;
        }
        case 128:
        case 133:
            return i_granule >> p_stream->i_granule_shift;
        case 136:
            if( p_stream->special.dirac.b_old )
                return (i_granule >> 30) + (i_granule & 0x3FFFFFFF);
            else
                return (i_granule >> 31);
        case 132:
        case 129:
        case 131:
        case 135:
            return i_granule ;
        default:
            return i_granule;
    }
}
