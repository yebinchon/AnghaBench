
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int frontend; } ;
typedef TYPE_1__ dvb_device_t ;


 int FE_READ_SIGNAL_STRENGTH ;
 scalar_t__ ioctl (int,int ,int*) ;

float dvb_get_signal_strength (dvb_device_t *d)
{
    uint16_t strength;

    if (d->frontend == -1
     || ioctl (d->frontend, FE_READ_SIGNAL_STRENGTH, &strength) < 0)
        return 0.;
    return strength / 65535.;
}
