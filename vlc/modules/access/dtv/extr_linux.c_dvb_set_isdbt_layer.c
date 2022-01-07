
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int time_interleaving; int segment_count; int code_rate; int modulation; } ;
typedef TYPE_1__ isdbt_layer_t ;
typedef int dvb_device_t ;


 int DTV_DELIVERY_SYSTEM ;
 unsigned int DTV_ISDBT_LAYERA_FEC ;
 scalar_t__ DTV_ISDBT_LAYERA_MODULATION ;
 scalar_t__ DTV_ISDBT_LAYERA_SEGMENT_COUNT ;
 scalar_t__ DTV_ISDBT_LAYERA_TIME_INTERLEAVING ;
 unsigned int DTV_ISDBT_LAYERB_FEC ;
 int QAM_AUTO ;
 int SYS_ISDBT ;
 int dvb_parse_fec (int ) ;
 int dvb_parse_modulation (int ,int ) ;
 int dvb_set_props (int *,int,int ,int ,unsigned int,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static int dvb_set_isdbt_layer (dvb_device_t *d, unsigned num,
                                const isdbt_layer_t *l)
{
    uint32_t mod = dvb_parse_modulation (l->modulation, QAM_AUTO);
    uint32_t fec = dvb_parse_fec (l->code_rate);
    uint32_t count = l->segment_count;
    uint32_t ti = l->time_interleaving;

    num *= DTV_ISDBT_LAYERB_FEC - DTV_ISDBT_LAYERA_FEC;

    return dvb_set_props (d, 5, DTV_DELIVERY_SYSTEM, SYS_ISDBT,
                          DTV_ISDBT_LAYERA_FEC + num, fec,
                          DTV_ISDBT_LAYERA_MODULATION + num, mod,
                          DTV_ISDBT_LAYERA_SEGMENT_COUNT + num, count,
                          DTV_ISDBT_LAYERA_TIME_INTERLEAVING + num, ti);
}
