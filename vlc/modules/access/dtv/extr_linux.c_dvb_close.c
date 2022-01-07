
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int frontend; int demux; int dir; int * cam; TYPE_1__* pids; int budget; } ;
typedef TYPE_2__ dvb_device_t ;
struct TYPE_5__ {int fd; } ;


 size_t MAX_PIDS ;
 int en50221_End (int *) ;
 int free (TYPE_2__*) ;
 int vlc_close (int) ;

void dvb_close (dvb_device_t *d)
{

    if (!d->budget)
    {
        for (size_t i = 0; i < MAX_PIDS; i++)
            if (d->pids[i].fd != -1)
                vlc_close (d->pids[i].fd);
    }

    if (d->cam != ((void*)0))
        en50221_End (d->cam);
    if (d->frontend != -1)
        vlc_close (d->frontend);
    vlc_close (d->demux);
    vlc_close (d->dir);
    free (d);
}
