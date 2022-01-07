
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int fe_sec_voltage_t ;


 int SEC_VOLTAGE_13 ;
 int SEC_VOLTAGE_18 ;
 int SEC_VOLTAGE_OFF ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static fe_sec_voltage_t DecodeVoltage( vlc_object_t *p_access )
{
    switch( var_GetInteger( p_access, "dvb-voltage" ) )
    {
        case 0: return SEC_VOLTAGE_OFF;
        case 13: return SEC_VOLTAGE_13;
        case 18: return SEC_VOLTAGE_18;
        default: return SEC_VOLTAGE_OFF;
    }
}
