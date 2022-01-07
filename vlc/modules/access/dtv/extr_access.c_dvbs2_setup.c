
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef void* uint8_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
typedef int dvb_device_t ;


 int dvb_set_dvbs2 (int *,int ,char const*,void*,void*,int,int,void*) ;
 int sec_setup (int *,int *,int ) ;
 void* var_InheritCodeRate (int *,char*) ;
 void* var_InheritInteger (int *,char*) ;
 char* var_InheritModulation (int *,char*) ;

__attribute__((used)) static int dvbs2_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    const char *mod = var_InheritModulation (obj, "dvb-modulation");
    uint32_t fec = var_InheritCodeRate (obj, "dvb-fec");
    uint32_t srate = var_InheritInteger (obj, "dvb-srate");
    int pilot = var_InheritInteger (obj, "dvb-pilot");
    int rolloff = var_InheritInteger (obj, "dvb-rolloff");
    uint8_t sid = var_InheritInteger (obj, "dvb-stream");

    int ret = dvb_set_dvbs2 (dev, freq, mod, srate, fec, pilot, rolloff, sid);
    if (ret == 0)
        sec_setup (obj, dev, freq);
    return ret;
}
