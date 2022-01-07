
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint64_t ;
typedef int dvb_device_t ;


 int dvb_set_sec (int *,int ,char,unsigned int,unsigned int,unsigned int) ;
 unsigned int var_InheritInteger (int *,char*) ;
 char var_InheritPolarization (int *) ;

__attribute__((used)) static void sec_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    char pol = var_InheritPolarization (obj);
    unsigned lowf = var_InheritInteger (obj, "dvb-lnb-low");
    unsigned highf = var_InheritInteger (obj, "dvb-lnb-high");
    unsigned switchf = var_InheritInteger (obj, "dvb-lnb-switch");

    dvb_set_sec (dev, freq, pol, lowf, highf, switchf);
}
