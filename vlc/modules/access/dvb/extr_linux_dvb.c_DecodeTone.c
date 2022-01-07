
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int fe_sec_tone_mode_t ;


 int SEC_TONE_OFF ;
 int SEC_TONE_ON ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static fe_sec_tone_mode_t DecodeTone( vlc_object_t *p_access )
{
    switch( var_GetInteger( p_access, "dvb-tone" ) )
    {
        case 0: return SEC_TONE_OFF;
        case 1: return SEC_TONE_ON;
        default: return SEC_TONE_OFF;
    }
}
