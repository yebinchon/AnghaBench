
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_tls_t ;
struct iovec {void* iov_base; size_t iov_len; } ;
typedef int ssize_t ;
typedef TYPE_2__* gnutls_transport_ptr_t ;
struct TYPE_6__ {int (* readv ) (TYPE_2__*,struct iovec*,int) ;} ;


 int stub1 (TYPE_2__*,struct iovec*,int) ;

__attribute__((used)) static ssize_t vlc_gnutls_read(gnutls_transport_ptr_t ptr, void *buf,
                               size_t length)
{
    vlc_tls_t *sock = ptr;
    struct iovec iov = {
        .iov_base = buf,
        .iov_len = length,
    };

    return sock->ops->readv(sock, &iov, 1);
}
