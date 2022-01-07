
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int oggpack_buffer ;
struct TYPE_9__ {int bytes; int packet; } ;
typedef TYPE_3__ ogg_packet ;
struct TYPE_7__ {void* i_frame_rate_base; void* i_frame_rate; } ;
struct TYPE_8__ {TYPE_1__ video; } ;
struct TYPE_10__ {int b_force_backup; int dts; scalar_t__ i_first_frame_index; scalar_t__ i_granule_shift; TYPE_2__ fmt; } ;
typedef TYPE_4__ logical_stream_t ;


 int VLC_UNUSED (int) ;
 void* __MAX (void*,int) ;
 int __MIN (int,int) ;
 int date_Init (int *,void*,void*) ;
 int oggpack_adv (int *,int) ;
 void* oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ,int ) ;

__attribute__((used)) static bool Ogg_ReadDaalaHeader( logical_stream_t *p_stream,
                                 ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;
    uint32_t i_timebase_numerator;
    uint32_t i_timebase_denominator;
    int keyframe_granule_shift;
    unsigned int i_keyframe_frequency_force;
    uint8_t i_major;
    uint8_t i_minor;
    uint8_t i_subminor;
    int i_version;




    p_stream->b_force_backup = 1;


    oggpack_readinit( &opb, p_oggpacket->packet, p_oggpacket->bytes );
    oggpack_adv( &opb, 48 );

    i_major = oggpack_read( &opb, 8 );
    i_minor = oggpack_read( &opb, 8 );
    i_subminor = oggpack_read( &opb, 8 );

    oggpack_adv( &opb, 32 );
    oggpack_adv( &opb, 32 );

    oggpack_adv( &opb, 32 );
    oggpack_adv( &opb, 32 );
    i_timebase_numerator = oggpack_read( &opb, 32 );

    i_timebase_denominator = oggpack_read( &opb, 32 );
    i_timebase_denominator = __MAX( i_timebase_denominator, 1 );

    p_stream->fmt.video.i_frame_rate = i_timebase_numerator;
    p_stream->fmt.video.i_frame_rate_base = i_timebase_denominator;

    oggpack_adv( &opb, 32 );

    keyframe_granule_shift = oggpack_read( &opb, 8 );
    keyframe_granule_shift = __MIN(keyframe_granule_shift, 31);
    i_keyframe_frequency_force = 1u << keyframe_granule_shift;


    p_stream->i_granule_shift = 0;
    i_keyframe_frequency_force--;
    while( i_keyframe_frequency_force )
    {
        p_stream->i_granule_shift++;
        i_keyframe_frequency_force >>= 1;
    }

    i_version = i_major * 1000000 + i_minor * 1000 + i_subminor;
    VLC_UNUSED(i_version);
    p_stream->i_first_frame_index = 0;
    if ( !i_timebase_numerator || !i_timebase_denominator )
        return 0;
    date_Init( &p_stream->dts, i_timebase_numerator, i_timebase_denominator );

    return 1;
}
