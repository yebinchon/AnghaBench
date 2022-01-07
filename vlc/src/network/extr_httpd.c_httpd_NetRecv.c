
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_tls_t ;
typedef int uint8_t ;
struct iovec {size_t iov_len; int * iov_base; } ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_2__* sock; } ;
typedef TYPE_3__ httpd_client_t ;
struct TYPE_6__ {int (* readv ) (TYPE_2__*,struct iovec*,int) ;} ;


 int stub1 (TYPE_2__*,struct iovec*,int) ;

__attribute__((used)) static
ssize_t httpd_NetRecv (httpd_client_t *cl, uint8_t *p, size_t i_len)
{
    vlc_tls_t *sock = cl->sock;
    struct iovec iov = { .iov_base = p, .iov_len = i_len };
    return sock->ops->readv(sock, &iov, 1);
}
