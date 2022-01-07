
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int fe_bandwidth_t ;


 int BANDWIDTH_6_MHZ ;
 int BANDWIDTH_7_MHZ ;
 int BANDWIDTH_8_MHZ ;
 int BANDWIDTH_AUTO ;
 int msg_Dbg (int *,char*,...) ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static fe_bandwidth_t DecodeBandwidth( vlc_object_t *p_access )
{
    fe_bandwidth_t fe_bandwidth = 0;
    int i_bandwidth = var_GetInteger( p_access, "dvb-bandwidth" );

    msg_Dbg( p_access, "using bandwidth=%d", i_bandwidth );

    switch( i_bandwidth )
    {
        case 0: fe_bandwidth = BANDWIDTH_AUTO; break;
        case 6: fe_bandwidth = BANDWIDTH_6_MHZ; break;
        case 7: fe_bandwidth = BANDWIDTH_7_MHZ; break;
        case 8: fe_bandwidth = BANDWIDTH_8_MHZ; break;
        default:
            msg_Dbg( p_access, "terrestrial dvb has bandwidth not set, using auto" );
            fe_bandwidth = BANDWIDTH_AUTO;
            break;
    }
    return fe_bandwidth;
}
