
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int fd; } ;
typedef TYPE_2__ access_sys_t ;




 int errno ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 scalar_t__ vlc_read_i11e (int,void*,size_t) ;
 int vlc_strerror_c (int) ;

__attribute__((used)) static ssize_t Read (stream_t *p_access, void *p_buffer, size_t i_len)
{
    access_sys_t *p_sys = p_access->p_sys;
    int fd = p_sys->fd;

    ssize_t val = vlc_read_i11e (fd, p_buffer, i_len);
    if (val < 0)
    {
        switch (errno)
        {
            case 128:
            case 129:
                return -1;
        }

        msg_Err (p_access, "read error: %s", vlc_strerror_c(errno));
        val = 0;
    }

    return val;
}
