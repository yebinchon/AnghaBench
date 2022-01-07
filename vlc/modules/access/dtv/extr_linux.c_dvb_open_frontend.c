
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frontend; int obj; } ;
typedef TYPE_1__ dvb_device_t ;


 int O_RDWR ;
 int dvb_open_node (TYPE_1__*,char*,int ) ;
 int errno ;
 int msg_Err (int ,char*,int ) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int dvb_open_frontend (dvb_device_t *d)
{
    if (d->frontend != -1)
        return 0;
    int fd = dvb_open_node (d, "frontend", O_RDWR);
    if (fd == -1)
    {
        msg_Err (d->obj, "cannot access frontend: %s", vlc_strerror_c(errno));
        return -1;
    }

    d->frontend = fd;
    return 0;
}
