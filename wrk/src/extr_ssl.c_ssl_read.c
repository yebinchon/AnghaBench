
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int status ;
struct TYPE_3__ {int ssl; int buf; } ;
typedef TYPE_1__ connection ;


 int ERROR ;
 int OK ;
 int RETRY ;


 int SSL_get_error (int ,int) ;
 int SSL_read (int ,int ,int) ;

status ssl_read(connection *c, size_t *n) {
    int r;
    if ((r = SSL_read(c->ssl, c->buf, sizeof(c->buf))) <= 0) {
        switch (SSL_get_error(c->ssl, r)) {
            case 129: return RETRY;
            case 128: return RETRY;
            default: return ERROR;
        }
    }
    *n = (size_t) r;
    return OK;
}
