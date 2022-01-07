
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int isdbt_layer_t ;
typedef int dvb_device_t ;


 int DTV_BANDWIDTH_HZ ;
 int DTV_CLEAR ;
 int DTV_DELIVERY_ISDB_T ;
 int DTV_DELIVERY_SYSTEM ;
 int DTV_FREQUENCY ;
 int DTV_GUARD_INTERVAL ;
 int DTV_ISDBT_LAYER_ENABLED ;
 int SYS_ISDBT ;
 scalar_t__ dvb_find_frontend (int *,int ) ;
 int dvb_parse_bandwidth (int ) ;
 int dvb_parse_guard (int ) ;
 int dvb_parse_transmit_mode (int) ;
 scalar_t__ dvb_set_isdbt_layer (int *,unsigned int,int const*) ;
 scalar_t__ dvb_set_props (int *,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;

int dvb_set_isdbt (dvb_device_t *d, uint32_t freq, uint32_t bandwidth,
                   int transmit_mode, uint32_t guard,
                   const isdbt_layer_t layers[3])
{
    bandwidth = dvb_parse_bandwidth (bandwidth);
    transmit_mode = dvb_parse_transmit_mode (transmit_mode);
    guard = dvb_parse_guard (guard);

    if (dvb_find_frontend (d, DTV_DELIVERY_ISDB_T))
        return -1;
    if (dvb_set_props (d, 6, DTV_CLEAR, 0, DTV_DELIVERY_SYSTEM, SYS_ISDBT,
                       DTV_FREQUENCY, freq, DTV_BANDWIDTH_HZ, bandwidth,
                       DTV_GUARD_INTERVAL, guard,
                       DTV_ISDBT_LAYER_ENABLED, 0x7 ))
        return -1;
    for (unsigned i = 0; i < 3; i++)
        if (dvb_set_isdbt_layer (d, i, layers + i))
            return -1;
    return 0;
}
