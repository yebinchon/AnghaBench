
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int dvb_device_t ;


 int DTV_CLEAR ;
 int DTV_DELIVERY_DVB_S ;
 int DTV_DELIVERY_SYSTEM ;
 int DTV_FREQUENCY ;
 int DTV_INNER_FEC ;
 int DTV_SYMBOL_RATE ;
 int SYS_DVBS ;
 scalar_t__ dvb_find_frontend (int *,int ) ;
 int dvb_parse_fec (int) ;
 int dvb_set_props (int *,int,int ,int ,int ,int ,int ,int,int ,int,int ,int) ;

int dvb_set_dvbs (dvb_device_t *d, uint64_t freq_Hz,
                  uint32_t srate, uint32_t fec)
{
    uint32_t freq = freq_Hz / 1000;
    fec = dvb_parse_fec (fec);

    if (dvb_find_frontend (d, DTV_DELIVERY_DVB_S))
        return -1;
    return dvb_set_props (d, 5, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_DVBS,
                          DTV_FREQUENCY, freq, DTV_SYMBOL_RATE, srate,
                          DTV_INNER_FEC, fec);
}
