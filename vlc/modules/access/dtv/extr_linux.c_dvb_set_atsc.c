
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dvb_device_t ;


 int DTV_CLEAR ;
 int DTV_DELIVERY_ATSC ;
 int DTV_DELIVERY_SYSTEM ;
 int DTV_FREQUENCY ;
 int DTV_MODULATION ;
 int SYS_ATSC ;
 int VSB_8 ;
 scalar_t__ dvb_find_frontend (int *,int ) ;
 unsigned int dvb_parse_modulation (char const*,int ) ;
 int dvb_set_props (int *,int,int ,int ,int ,int ,int ,int ,int ,unsigned int) ;

int dvb_set_atsc (dvb_device_t *d, uint32_t freq, const char *modstr)
{
    unsigned mod = dvb_parse_modulation (modstr, VSB_8);

    if (dvb_find_frontend (d, DTV_DELIVERY_ATSC))
        return -1;
    return dvb_set_props (d, 4, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_ATSC,
                          DTV_FREQUENCY, freq, DTV_MODULATION, mod);
}
