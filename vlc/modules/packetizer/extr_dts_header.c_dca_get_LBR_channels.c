
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
__attribute__((used)) static uint8_t dca_get_LBR_channels( uint16_t nuSpkrActivityMask,
                                     uint16_t *pi_chans )
{
    uint16_t i_physical_channels = 0;
    uint8_t i_channels = 0;

    static const struct
    {
        int phy;
        uint8_t nb;
    } bitmask[16] = {

        { 130, 1 },
        { 133, 2 },
        { 132, 2 },
        { 129, 1 },
        { 128, 1 },
        { 0, 2 },
        { 131, 2 },
        { 0, 1 },
        { 0, 1 },
        { 0, 2 },
        { 133, 2 },
        { 132, 2 },
        { 0, 1 },
        { 0, 2 },
        { 0, 1 },
        { 0, 2 },
    };

    for( int i=0 ; nuSpkrActivityMask; nuSpkrActivityMask >>= 1 )
    {
        if( nuSpkrActivityMask & 1 )
        {
            i_physical_channels |= bitmask[i].phy;
            i_channels += bitmask[i].nb;
        }
        ++i;
    }
    *pi_chans = i_physical_channels;
    return i_channels;
}
