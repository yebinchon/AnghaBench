
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int frontend; } ;
typedef TYPE_1__ dvb_device_t ;


 int FE_READ_SNR ;
 scalar_t__ ioctl (int,int ,int*) ;

float dvb_get_snr (dvb_device_t *d)
{
    uint16_t snr;

    if (d->frontend == -1 || ioctl (d->frontend, FE_READ_SNR, &snr) < 0)
        return 0.;
    return snr / 65535.;
}
