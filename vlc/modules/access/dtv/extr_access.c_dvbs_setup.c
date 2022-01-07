
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int dvb_device_t ;


 int dvb_set_dvbs (int *,int ,int ,int ) ;
 int sec_setup (int *,int *,int ) ;
 int var_InheritCodeRate (int *,char*) ;
 int var_InheritInteger (int *,char*) ;

__attribute__((used)) static int dvbs_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    uint32_t fec = var_InheritCodeRate (obj, "dvb-fec");
    uint32_t srate = var_InheritInteger (obj, "dvb-srate");

    int ret = dvb_set_dvbs (dev, freq, srate, fec);
    if (ret == 0)
        sec_setup (obj, dev, freq);
    return ret;
}
