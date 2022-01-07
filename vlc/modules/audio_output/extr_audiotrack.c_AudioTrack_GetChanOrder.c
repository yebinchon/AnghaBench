
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int AOUT_CHAN_CENTER ;
 int AOUT_CHAN_LEFT ;
 int AOUT_CHAN_LFE ;
 int AOUT_CHAN_MAX ;
 int AOUT_CHAN_MIDDLELEFT ;
 int AOUT_CHAN_MIDDLERIGHT ;
 int AOUT_CHAN_REARCENTER ;
 int AOUT_CHAN_REARLEFT ;
 int AOUT_CHAN_REARRIGHT ;
 int AOUT_CHAN_RIGHT ;
 scalar_t__ HAS_CHAN (int ) ;
 int assert (int) ;

__attribute__((used)) static void
AudioTrack_GetChanOrder( uint16_t i_physical_channels, uint32_t p_chans_out[] )
{


    int i = 0;

    if( ( ( i_physical_channels & (AOUT_CHAN_LEFT) ) == (AOUT_CHAN_LEFT) ) )
        p_chans_out[i++] = AOUT_CHAN_LEFT;
    if( ( ( i_physical_channels & (AOUT_CHAN_RIGHT) ) == (AOUT_CHAN_RIGHT) ) )
        p_chans_out[i++] = AOUT_CHAN_RIGHT;

    if( ( ( i_physical_channels & (AOUT_CHAN_CENTER) ) == (AOUT_CHAN_CENTER) ) )
        p_chans_out[i++] = AOUT_CHAN_CENTER;

    if( ( ( i_physical_channels & (AOUT_CHAN_LFE) ) == (AOUT_CHAN_LFE) ) )
        p_chans_out[i++] = AOUT_CHAN_LFE;

    if( ( ( i_physical_channels & (AOUT_CHAN_REARLEFT) ) == (AOUT_CHAN_REARLEFT) ) )
        p_chans_out[i++] = AOUT_CHAN_REARLEFT;
    if( ( ( i_physical_channels & (AOUT_CHAN_REARRIGHT) ) == (AOUT_CHAN_REARRIGHT) ) )
        p_chans_out[i++] = AOUT_CHAN_REARRIGHT;

    if( ( ( i_physical_channels & (AOUT_CHAN_REARCENTER) ) == (AOUT_CHAN_REARCENTER) ) )
        p_chans_out[i++] = AOUT_CHAN_REARCENTER;

    if( ( ( i_physical_channels & (AOUT_CHAN_MIDDLELEFT) ) == (AOUT_CHAN_MIDDLELEFT) ) )
        p_chans_out[i++] = AOUT_CHAN_MIDDLELEFT;
    if( ( ( i_physical_channels & (AOUT_CHAN_MIDDLERIGHT) ) == (AOUT_CHAN_MIDDLERIGHT) ) )
        p_chans_out[i++] = AOUT_CHAN_MIDDLERIGHT;

    assert( i <= AOUT_CHAN_MAX );

}
