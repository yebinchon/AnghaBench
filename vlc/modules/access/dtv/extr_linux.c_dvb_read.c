
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {int fd; scalar_t__ revents; int events; } ;
struct dvb_frontend_event {int status; } ;
typedef int ssize_t ;
struct TYPE_3__ {int demux; int frontend; int obj; int * cam; } ;
typedef TYPE_1__ dvb_device_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EOVERFLOW ;
 int FE_GET_EVENT ;
 int POLLIN ;
 int POLLPRI ;
 int dvb_frontend_status (int ,int ) ;
 int en50221_Poll (int *) ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,struct dvb_frontend_event*) ;
 int msg_Err (int ,char*,...) ;
 int read (int,void*,size_t) ;
 int vlc_poll_i11e (struct pollfd*,int,int) ;
 int vlc_strerror_c (scalar_t__) ;

ssize_t dvb_read (dvb_device_t *d, void *buf, size_t len, int ms)
{
    struct pollfd ufd[2];
    int n;

    if (d->cam != ((void*)0))
        en50221_Poll (d->cam);

    ufd[0].fd = d->demux;
    ufd[0].events = POLLIN;
    if (d->frontend != -1)
    {
        ufd[1].fd = d->frontend;
        ufd[1].events = POLLPRI;
        n = 2;
    }
    else
        n = 1;

    errno = 0;
    n = vlc_poll_i11e (ufd, n, ms);
    if (n == 0)
        errno = EAGAIN;
    if (n <= 0)
        return -1;

    if (d->frontend != -1 && ufd[1].revents)
    {
        struct dvb_frontend_event ev;

        if (ioctl (d->frontend, FE_GET_EVENT, &ev) < 0)
        {
            if (errno == EOVERFLOW)
            {
                msg_Err (d->obj, "cannot dequeue events fast enough!");
                return -1;
            }
            msg_Err (d->obj, "cannot dequeue frontend event: %s",
                     vlc_strerror_c(errno));
            return 0;
        }

        dvb_frontend_status(d->obj, ev.status);
    }

    if (ufd[0].revents)
    {
        ssize_t val = read (d->demux, buf, len);
        if (val == -1 && (errno != EAGAIN && errno != EINTR))
        {
            if (errno == EOVERFLOW)
            {
                msg_Err (d->obj, "cannot demux data fast enough!");
                return -1;
            }
            msg_Err (d->obj, "cannot demux: %s", vlc_strerror_c(errno));
            return 0;
        }
        return val;
    }

    return -1;
}
