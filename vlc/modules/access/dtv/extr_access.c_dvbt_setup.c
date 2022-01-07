
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
typedef int dvb_device_t ;


 int dvb_set_dvbt (int *,int ,char const*,void*,void*,void*,int,void*,int) ;
 void* var_InheritCodeRate (int *,char*) ;
 void* var_InheritGuardInterval (int *) ;
 void* var_InheritInteger (int *,char*) ;
 char* var_InheritModulation (int *,char*) ;

__attribute__((used)) static int dvbt_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    const char *mod = var_InheritModulation (obj, "dvb-modulation");
    uint32_t fec_hp = var_InheritCodeRate (obj, "dvb-code-rate-hp");
    uint32_t fec_lp = var_InheritCodeRate (obj, "dvb-code-rate-lp");
    uint32_t guard = var_InheritGuardInterval (obj);
    uint32_t bw = var_InheritInteger (obj, "dvb-bandwidth");
    int tx = var_InheritInteger (obj, "dvb-transmission");
    int h = var_InheritInteger (obj, "dvb-hierarchy");

    return dvb_set_dvbt (dev, freq, mod, fec_hp, fec_lp, bw, tx, guard, h);
}
