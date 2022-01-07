
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int lock; int obj; int p_context; } ;
typedef TYPE_1__ vlc_tls_st_t ;
struct iovec {int iov_len; int iov_base; } ;
typedef size_t ssize_t ;
typedef scalar_t__ OSStatus ;


 scalar_t__ SSLRead (int ,int ,int ,size_t*) ;
 scalar_t__ errSSLClosedGraceful ;
 scalar_t__ errSSLClosedNoNotify ;
 scalar_t__ errSSLWouldBlock ;
 int msg_Dbg (int ,char*,int) ;
 scalar_t__ noErr ;
 size_t st_Error (int *,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static ssize_t st_Recv (vlc_tls_t *session, struct iovec *iov, unsigned count)
{
    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;

    if (unlikely(count == 0))
        return 0;

    vlc_mutex_lock(&sys->lock);

    size_t actualSize;
    OSStatus ret = SSLRead(sys->p_context, iov->iov_base, iov->iov_len,
                           &actualSize);

    if (ret == errSSLWouldBlock && actualSize) {
        vlc_mutex_unlock(&sys->lock);
        return actualSize;
    }


    if (ret == errSSLClosedNoNotify || ret == errSSLClosedGraceful) {
        msg_Dbg(sys->obj, "Got close notification with code %i", (int)ret);
        vlc_mutex_unlock(&sys->lock);
        return 0;
    }

    vlc_mutex_unlock(&sys->lock);
    return ret != noErr ? st_Error(session, ret) : actualSize;
}
