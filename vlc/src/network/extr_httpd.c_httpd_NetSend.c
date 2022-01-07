
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
struct iovec {void* iov_base; size_t iov_len; } ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_2__* sock; } ;
typedef TYPE_3__ httpd_client_t ;
struct TYPE_6__ {int (* writev ) (TYPE_2__*,struct iovec const*,int) ;} ;


 int stub1 (TYPE_2__*,struct iovec const*,int) ;

__attribute__((used)) static
ssize_t httpd_NetSend (httpd_client_t *cl, const uint8_t *p, size_t i_len)
{
    vlc_tls_t *sock = cl->sock;
    const struct iovec iov = { .iov_base = (void *)p, .iov_len = i_len };
    return sock->ops->writev(sock, &iov, 1);
}
