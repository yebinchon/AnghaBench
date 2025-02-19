
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int const uint32_t ;
typedef int mask ;


 int AOUT_CHAN_MAX ;
 int CHAR_BIT ;
 int* pi_vlc_chan_order_wg4 ;
 int static_assert (int,char*) ;

unsigned aout_CheckChannelReorder( const uint32_t *chans_in,
                                   const uint32_t *chans_out,
                                   uint32_t mask, uint8_t *restrict table )
{
    static_assert(AOUT_CHAN_MAX <= (sizeof (mask) * CHAR_BIT), "Missing bits");

    unsigned channels = 0;

    if( chans_in == ((void*)0) )
        chans_in = pi_vlc_chan_order_wg4;
    if( chans_out == ((void*)0) )
        chans_out = pi_vlc_chan_order_wg4;

    for( unsigned i = 0; chans_in[i]; i++ )
    {
        const uint32_t chan = chans_in[i];
        if( !(mask & chan) )
            continue;

        unsigned index = 0;
        for( unsigned j = 0; chan != chans_out[j]; j++ )
            if( mask & chans_out[j] )
                index++;

        table[channels++] = index;
    }

    for( unsigned i = 0; i < channels; i++ )
        if( table[i] != i )
            return channels;
    return 0;
}
