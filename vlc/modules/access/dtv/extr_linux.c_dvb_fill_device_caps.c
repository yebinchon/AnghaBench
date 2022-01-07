
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dvb_frontend_info {int caps; int symbol_rate_max; int symbol_rate_min; int frequency_max; int frequency_min; } ;
struct TYPE_9__ {int obj; int frontend; } ;
typedef TYPE_3__ dvb_device_t ;
struct TYPE_8__ {int max; int min; } ;
struct TYPE_7__ {int max; int min; } ;
struct TYPE_10__ {int b_can_cam_auto; TYPE_2__ symbolrate; TYPE_1__ frequency; } ;
typedef TYPE_4__ dvb_device_caps_t ;


 int FE_CAN_QAM_AUTO ;
 int FE_GET_INFO ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct dvb_frontend_info*) ;
 int msg_Err (int ,char*,int ) ;
 int vlc_strerror_c (int ) ;

int dvb_fill_device_caps(dvb_device_t *d, dvb_device_caps_t *caps)
{
    struct dvb_frontend_info info;
    if (ioctl (d->frontend, FE_GET_INFO, &info) < 0)
    {
        msg_Err (d->obj, "cannot get frontend info: %s",
                 vlc_strerror_c(errno));
        return -1;
    }

    caps->frequency.min = info.frequency_min;
    caps->frequency.max = info.frequency_max;
    caps->symbolrate.min = info.symbol_rate_min;
    caps->symbolrate.max = info.symbol_rate_max;
    caps->b_can_cam_auto = ( info.caps & FE_CAN_QAM_AUTO );

    return 0;
}
