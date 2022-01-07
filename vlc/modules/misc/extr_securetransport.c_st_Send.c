
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {size_t i_send_buffered_bytes; int lock; int p_context; scalar_t__ b_server_mode; } ;
typedef TYPE_1__ vlc_tls_st_t ;
struct iovec {size_t iov_len; int * iov_base; } ;
typedef int ssize_t ;
typedef scalar_t__ OSStatus ;


 int EAGAIN ;
 int EINTR ;
 scalar_t__ SSLWrite (int ,int *,size_t,size_t*) ;
 scalar_t__ errSSLWouldBlock ;
 int errno ;
 scalar_t__ noErr ;
 int st_Error (int *,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static ssize_t st_Send (vlc_tls_t *session, const struct iovec *iov,
                        unsigned count)
{
    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;
    OSStatus ret = noErr;

    if (unlikely(count == 0))
        return 0;

    vlc_mutex_lock(&sys->lock);
    int againErr = sys->b_server_mode ? EAGAIN : EINTR;

    size_t actualSize;
    if (sys->i_send_buffered_bytes > 0) {
        ret = SSLWrite(sys->p_context, ((void*)0), 0, &actualSize);

        if (ret == noErr) {

            actualSize = sys->i_send_buffered_bytes;
            sys->i_send_buffered_bytes = 0;

        } else if (ret == errSSLWouldBlock) {
            vlc_mutex_unlock(&sys->lock);
            errno = againErr;
            return -1;
        }

    } else {
        ret = SSLWrite(sys->p_context, iov->iov_base, iov->iov_len,
                       &actualSize);

        if (ret == errSSLWouldBlock) {
            sys->i_send_buffered_bytes = iov->iov_len;
            errno = againErr;
            vlc_mutex_unlock(&sys->lock);
            return -1;
        }
    }

    vlc_mutex_unlock(&sys->lock);
    return ret != noErr ? st_Error(session, ret) : actualSize;
}
