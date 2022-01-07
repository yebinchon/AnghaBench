
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int events; int fd; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ access_sys_t ;


 int POLLIN ;
 int vlc_poll_i11e (struct pollfd*,int,int) ;

__attribute__((used)) static int AccessPoll (stream_t *access)
{
    access_sys_t *sys = access->p_sys;
    struct pollfd ufd;

    ufd.fd = sys->fd;
    ufd.events = POLLIN;

    return vlc_poll_i11e (&ufd, 1, -1);
}
