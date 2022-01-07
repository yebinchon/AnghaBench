
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int dvb_device_t ;


 int dvb_set_isdbc (int *,int ,char const*,unsigned int,int ) ;
 int var_InheritCodeRate (int *,char*) ;
 unsigned int var_InheritInteger (int *,char*) ;
 char* var_InheritModulation (int *,char*) ;

__attribute__((used)) static int isdbc_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    const char *mod = var_InheritModulation (obj, "dvb-modulation");
    uint32_t fec = var_InheritCodeRate (obj, "dvb-fec");
    unsigned srate = var_InheritInteger (obj, "dvb-srate");

    return dvb_set_isdbc (dev, freq, mod, srate, fec);
}
