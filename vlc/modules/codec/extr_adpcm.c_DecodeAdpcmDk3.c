
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_7__ {size_t i_block; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_8__ {int i_predictor; int i_step_index; } ;
typedef TYPE_3__ adpcm_ima_wav_channel_t ;


 int AdpcmImaWavExpandNibble (TYPE_3__*,int) ;
 int GetByte (int ) ;
 int GetWord (int) ;

__attribute__((used)) static void DecodeAdpcmDk3( decoder_t *p_dec, int16_t *p_sample,
                            uint8_t *p_buffer )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t *p_end = &p_buffer[p_sys->i_block];
    adpcm_ima_wav_channel_t sum;
    adpcm_ima_wav_channel_t diff;
    int i_diff_value;

    p_buffer += 10;

    GetWord( sum.i_predictor );
    GetWord( diff.i_predictor );
    GetByte( sum.i_step_index );
    GetByte( diff.i_step_index );

    i_diff_value = diff.i_predictor;

    while( p_buffer + 1 <= p_end )
    {

        AdpcmImaWavExpandNibble( &sum,
                                 (*p_buffer)&0x0f);

        AdpcmImaWavExpandNibble( &diff,
                                 (*p_buffer) >> 4 );

        i_diff_value = ( i_diff_value + diff.i_predictor ) / 2;

        *p_sample++ = sum.i_predictor + i_diff_value;
        *p_sample++ = sum.i_predictor - i_diff_value;

        p_buffer++;

        AdpcmImaWavExpandNibble( &sum,
                                 (*p_buffer)&0x0f);

        *p_sample++ = sum.i_predictor + i_diff_value;
        *p_sample++ = sum.i_predictor - i_diff_value;


        AdpcmImaWavExpandNibble( &sum,
                                 (*p_buffer)>>4);
        p_buffer++;
        if( p_buffer < p_end )
        {
            AdpcmImaWavExpandNibble( &diff,
                                     (*p_buffer)&0x0f );

            i_diff_value = ( i_diff_value + diff.i_predictor ) / 2;

            *p_sample++ = sum.i_predictor + i_diff_value;
            *p_sample++ = sum.i_predictor - i_diff_value;

            AdpcmImaWavExpandNibble( &sum,
                                     (*p_buffer)>>4);
            p_buffer++;

            *p_sample++ = sum.i_predictor + i_diff_value;
            *p_sample++ = sum.i_predictor - i_diff_value;
        }
    }
}
