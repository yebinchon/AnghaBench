
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_tls_t ;
struct TYPE_8__ {TYPE_2__* sock; } ;
typedef TYPE_3__ vlc_tls_proxy_t ;
struct iovec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int (* readv ) (TYPE_2__*,struct iovec*,unsigned int) ;} ;


 int stub1 (TYPE_2__*,struct iovec*,unsigned int) ;

__attribute__((used)) static ssize_t vlc_tls_ProxyRead(vlc_tls_t *tls, struct iovec *iov,
                                 unsigned count)
{
    vlc_tls_proxy_t *proxy = (vlc_tls_proxy_t *)tls;
    vlc_tls_t *sock = proxy->sock;

    return sock->ops->readv(sock, iov, count);
}
