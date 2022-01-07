
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int fe_transmit_mode_t ;


 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int TRANSMISSION_MODE_AUTO ;
 int msg_Dbg (int *,char*,...) ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static fe_transmit_mode_t DecodeTransmission( vlc_object_t *p_access )
{
    fe_transmit_mode_t fe_transmission = 0;
    int i_transmission = var_GetInteger( p_access, "dvb-transmission" );

    msg_Dbg( p_access, "using transmission=%d", i_transmission );

    switch( i_transmission )
    {
        case 0: fe_transmission = TRANSMISSION_MODE_AUTO; break;
        case 2: fe_transmission = TRANSMISSION_MODE_2K; break;
        case 8: fe_transmission = TRANSMISSION_MODE_8K; break;
        default:
            msg_Dbg( p_access, "terrestrial dvb has transmission mode not set, using auto");
            fe_transmission = TRANSMISSION_MODE_AUTO;
            break;
    }
    return fe_transmission;
}
