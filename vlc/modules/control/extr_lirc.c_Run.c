
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int events; int fd; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int i_fd; } ;
typedef TYPE_2__ intf_sys_t ;


 scalar_t__ EINTR ;
 int POLLIN ;
 int Process (TYPE_1__*) ;
 scalar_t__ errno ;
 int poll (struct pollfd*,int,int) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *Run( void *data )
{
    intf_thread_t *p_intf = data;
    intf_sys_t *p_sys = p_intf->p_sys;

    struct pollfd ufd;
    ufd.fd = p_sys->i_fd;
    ufd.events = POLLIN;

    for( ;; )
    {

        if( poll( &ufd, 1, -1 ) == -1 )
        {
            if( errno == EINTR )
                continue;
            break;
        }


        int canc = vlc_savecancel();
        Process( p_intf );
        vlc_restorecancel(canc);
    }
    return ((void*)0);
}
