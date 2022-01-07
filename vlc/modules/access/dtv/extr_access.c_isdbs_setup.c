
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef int dvb_device_t ;


 int dvb_set_isdbs (int *,int ,int ) ;
 int sec_setup (int *,int *,int ) ;
 int var_InheritInteger (int *,char*) ;

__attribute__((used)) static int isdbs_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    uint16_t ts_id = var_InheritInteger (obj, "dvb-ts-id");

    int ret = dvb_set_isdbs (dev, freq, ts_id);
    if (ret == 0)
        sec_setup (obj, dev, freq);
    return ret;
}
