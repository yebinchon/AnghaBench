
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dvb_device_t ;


 int DTV_BANDWIDTH_HZ ;
 int DTV_CLEAR ;
 int DTV_CODE_RATE_HP ;
 int DTV_CODE_RATE_LP ;
 int DTV_DELIVERY_DVB_T ;
 int DTV_DELIVERY_SYSTEM ;
 int DTV_FREQUENCY ;
 int DTV_GUARD_INTERVAL ;
 int DTV_HIERARCHY ;
 int DTV_MODULATION ;
 int DTV_TRANSMISSION_MODE ;
 int QAM_AUTO ;
 int SYS_DVBT ;
 scalar_t__ dvb_find_frontend (int *,int ) ;
 int dvb_parse_bandwidth (int ) ;
 int dvb_parse_fec (int ) ;
 int dvb_parse_guard (int ) ;
 int dvb_parse_hierarchy (int) ;
 int dvb_parse_modulation (char const*,int ) ;
 int dvb_parse_transmit_mode (int) ;
 int dvb_set_props (int *,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int) ;

int dvb_set_dvbt (dvb_device_t *d, uint32_t freq, const char *modstr,
                  uint32_t fec_hp, uint32_t fec_lp, uint32_t bandwidth,
                  int transmit_mode, uint32_t guard, int hierarchy)
{
    uint32_t mod = dvb_parse_modulation (modstr, QAM_AUTO);
    fec_hp = dvb_parse_fec (fec_hp);
    fec_lp = dvb_parse_fec (fec_lp);
    bandwidth = dvb_parse_bandwidth (bandwidth);
    transmit_mode = dvb_parse_transmit_mode (transmit_mode);
    guard = dvb_parse_guard (guard);
    hierarchy = dvb_parse_hierarchy (hierarchy);

    if (dvb_find_frontend (d, DTV_DELIVERY_DVB_T))
        return -1;
    return dvb_set_props (d, 10, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_DVBT,
                          DTV_FREQUENCY, freq, DTV_MODULATION, mod,
                          DTV_CODE_RATE_HP, fec_hp, DTV_CODE_RATE_LP, fec_lp,
                          DTV_BANDWIDTH_HZ, bandwidth,
                          DTV_TRANSMISSION_MODE, transmit_mode,
                          DTV_GUARD_INTERVAL, guard,
                          DTV_HIERARCHY, hierarchy);
}
