
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_tls {int dummy; } ;
struct iovec {size_t iov_len; int iov_base; } ;
typedef size_t ssize_t ;


 int memcpy (int ,size_t,size_t) ;
 size_t stream_content ;
 size_t stream_length ;

__attribute__((used)) static ssize_t recv_callback(struct vlc_tls *tls, struct iovec *iov,
                             unsigned count)
{
    size_t rcvd = 0;

    while (count > 0)
    {
        size_t copy = iov->iov_len;
        if (copy > stream_length)
            copy = stream_length;

        if (copy > 0)
        {
            memcpy(iov->iov_base, stream_content, copy);
            stream_content += copy;
            stream_length -= copy;
            rcvd += copy;
        }

        iov++;
        count--;
    }
    (void) tls;
    return rcvd;
}
