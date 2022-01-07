
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint64_t ;
typedef scalar_t__ (* tuner_setup_t ) (int *,int *,int ) ;
typedef int dvb_device_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ dvb_set_inversion (int *,int ) ;
 scalar_t__ dvb_tune (int *) ;
 int var_InheritInteger (int *,char*) ;

__attribute__((used)) static int Tune (vlc_object_t *obj, dvb_device_t *dev, tuner_setup_t pf_setup,
                 uint64_t freq)
{
    if (pf_setup(obj, dev, freq)
     || dvb_set_inversion (dev, var_InheritInteger (obj, "dvb-inversion"))
     || dvb_tune (dev))
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
