
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {TYPE_1__* pids; int demux; scalar_t__ budget; } ;
typedef TYPE_2__ dvb_device_t ;
struct TYPE_4__ {scalar_t__ pid; int fd; } ;


 int DMX_REMOVE_PID ;
 size_t MAX_PIDS ;
 int ioctl (int ,int ,scalar_t__*) ;
 int vlc_close (int) ;

void dvb_remove_pid (dvb_device_t *d, uint16_t pid)
{
    if (d->budget)
        return;




    for (size_t i = 0; i < MAX_PIDS; i++)
    {
        if (d->pids[i].pid == pid)
        {
            vlc_close (d->pids[i].fd);
            d->pids[i].pid = d->pids[i].fd = -1;
            return;
        }
    }

}
