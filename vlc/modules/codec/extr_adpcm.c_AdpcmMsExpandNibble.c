
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_sample1; int i_coeff1; int i_sample2; int i_coeff2; int i_idelta; } ;
typedef TYPE_1__ adpcm_ms_channel_t ;


 int CLAMP (int,int,int) ;
 int* i_adaptation_table ;

__attribute__((used)) static int AdpcmMsExpandNibble(adpcm_ms_channel_t *p_channel,
                               int i_nibble )
{
    int i_predictor;
    int i_snibble;


    i_snibble = i_nibble - ( i_nibble&0x08 ? 0x10 : 0 );

    i_predictor = ( p_channel->i_sample1 * p_channel->i_coeff1 +
                    p_channel->i_sample2 * p_channel->i_coeff2 ) / 256 +
                  i_snibble * p_channel->i_idelta;

    CLAMP( i_predictor, -32768, 32767 );

    p_channel->i_sample2 = p_channel->i_sample1;
    p_channel->i_sample1 = i_predictor;

    p_channel->i_idelta = ( i_adaptation_table[i_nibble] *
                            p_channel->i_idelta ) / 256;
    if( p_channel->i_idelta < 16 )
    {
        p_channel->i_idelta = 16;
    }
    return( i_predictor );
}
