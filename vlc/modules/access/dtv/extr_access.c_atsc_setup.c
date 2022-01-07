
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint64_t ;
typedef int dvb_device_t ;


 int dvb_set_atsc (int *,int ,char const*) ;
 char* var_InheritModulation (int *,char*) ;

__attribute__((used)) static int atsc_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    const char *mod = var_InheritModulation (obj, "dvb-modulation");

    return dvb_set_atsc (dev, freq, mod);
}
