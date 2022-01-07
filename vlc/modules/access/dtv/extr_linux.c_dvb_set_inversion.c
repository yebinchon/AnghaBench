
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvb_device_t ;


 int DTV_INVERSION ;
 int INVERSION_AUTO ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int dvb_set_prop (int *,int ,int) ;

int dvb_set_inversion (dvb_device_t *d, int v)
{
    switch (v)
    {
        case 0: v = INVERSION_OFF; break;
        case 1: v = INVERSION_ON; break;
        default: v = INVERSION_AUTO; break;
    }
    return dvb_set_prop (d, DTV_INVERSION, v);
}
