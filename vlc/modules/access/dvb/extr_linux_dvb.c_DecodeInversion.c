
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int fe_spectral_inversion_t ;


 int INVERSION_AUTO ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int msg_Dbg (int *,char*,...) ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static fe_spectral_inversion_t DecodeInversion( vlc_object_t *p_access )
{
    int i_val;
    fe_spectral_inversion_t fe_inversion = 0;

    i_val = var_GetInteger( p_access, "dvb-inversion" );
    msg_Dbg( p_access, "using inversion=%d", i_val );

    switch( i_val )
    {
        case 0: fe_inversion = INVERSION_OFF; break;
        case 1: fe_inversion = INVERSION_ON; break;
        case 2: fe_inversion = INVERSION_AUTO; break;
        default:
            msg_Dbg( p_access, "dvb has inversion not set, using auto");
            fe_inversion = INVERSION_AUTO;
            break;
    }
    return fe_inversion;
}
