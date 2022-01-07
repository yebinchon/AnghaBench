
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int en50221_capmt_info_t ;
struct TYPE_3__ {int * cam; } ;
typedef TYPE_1__ dvb_device_t ;


 int en50221_SetCAPMT (int *,int *) ;

bool dvb_set_ca_pmt (dvb_device_t *d, en50221_capmt_info_t *p_capmtinfo)
{
    if (d->cam != ((void*)0))
    {
        en50221_SetCAPMT (d->cam, p_capmtinfo);
        return 1;
    }
    return 0;
}
