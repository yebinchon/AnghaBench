
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int status ;
struct TYPE_3__ {int ssl; int fd; } ;
typedef TYPE_1__ connection ;


 int ERROR ;
 int OK ;
 int RETRY ;


 int SSL_connect (int ) ;
 int SSL_get_error (int ,int) ;
 int SSL_set_fd (int ,int ) ;
 int SSL_set_tlsext_host_name (int ,char*) ;

status ssl_connect(connection *c, char *host) {
    int r;
    SSL_set_fd(c->ssl, c->fd);
    SSL_set_tlsext_host_name(c->ssl, host);
    if ((r = SSL_connect(c->ssl)) != 1) {
        switch (SSL_get_error(c->ssl, r)) {
            case 129: return RETRY;
            case 128: return RETRY;
            default: return ERROR;
        }
    }
    return OK;
}
