
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int AOUT_CHANMODE_DUALMONO ;
 int AOUT_CHANS_3_0 ;
 int AOUT_CHANS_4_0 ;
 int AOUT_CHANS_4_CENTER_REAR ;
 int AOUT_CHANS_5_0 ;
 int AOUT_CHANS_6_0 ;
 int AOUT_CHANS_7_0 ;
 int AOUT_CHANS_CENTER ;
 int AOUT_CHANS_FRONT ;
 int AOUT_CHANS_REAR ;
 int AOUT_CHAN_CENTER ;
 int AOUT_CHAN_LFE ;
 int AOUT_CHAN_REARCENTER ;

__attribute__((used)) static uint16_t dca_get_channels( uint8_t i_amode, bool b_lfe,
                                  uint16_t *p_chan_mode )
{
    uint16_t i_physical_channels;

    switch( i_amode )
    {
        case 0x0:
            i_physical_channels = AOUT_CHAN_CENTER;
            break;
        case 0x1:
            i_physical_channels = AOUT_CHANS_FRONT;
            *p_chan_mode = AOUT_CHANMODE_DUALMONO;
            break;
        case 0x2:
        case 0x3:
        case 0x4:
            i_physical_channels = AOUT_CHANS_FRONT;
            break;
        case 0x5:
            i_physical_channels = AOUT_CHANS_3_0;
            break;
        case 0x6:
            i_physical_channels = AOUT_CHANS_FRONT | AOUT_CHAN_REARCENTER;
            break;
        case 0x7:
            i_physical_channels = AOUT_CHANS_4_CENTER_REAR;
            break;
        case 0x8:
            i_physical_channels = AOUT_CHANS_4_0;
            break;
        case 0x9:
            i_physical_channels = AOUT_CHANS_5_0;
            break;
        case 0xA:
        case 0xB:
            i_physical_channels = AOUT_CHANS_6_0;
            break;
        case 0xC:
            i_physical_channels = AOUT_CHANS_CENTER | AOUT_CHANS_FRONT
                                | AOUT_CHANS_REAR;
            break;
        case 0xD:
            i_physical_channels = AOUT_CHANS_7_0;
            break;
        case 0xE:
        case 0xF:

            i_physical_channels = AOUT_CHANS_7_0;
            break;
        default:
            return 0;
    }
    if (b_lfe)
        i_physical_channels |= AOUT_CHAN_LFE;

    return i_physical_channels;
}
