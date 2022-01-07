
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ WSAEMSGSIZE ;
 scalar_t__ WSAGetLastError () ;
 int assert (int) ;
 scalar_t__ errno ;
 int msg_Err (int *,char*,int ) ;
 int msg_Warn (int *,char*,size_t) ;
 scalar_t__ vlc_killed () ;
 int vlc_recv_i11e (int,void*,size_t,int ) ;
 int vlc_strerror_c (scalar_t__) ;
 int vlc_testcancel () ;

ssize_t (net_Read)(vlc_object_t *restrict obj, int fd,
                   void *restrict buf, size_t len)
{
    size_t rd = 0;

    do
    {
        if (vlc_killed())
        {
            vlc_testcancel();
            errno = EINTR;
            return -1;
        }

        ssize_t val = vlc_recv_i11e(fd, buf, len, 0);
        if (val < 0)
        {
            if (errno == EINTR || errno == EAGAIN)
                continue;







            else
            {
                msg_Err(obj, "read error: %s", vlc_strerror_c(errno));
                return rd ? (ssize_t)rd : -1;
            }
        }

        rd += val;

        if (val == 0)
            break;

        assert(len >= (size_t)val);
        len -= val;
        buf = ((char *)buf) + val;
    }
    while (len > 0);

    return rd;
}
