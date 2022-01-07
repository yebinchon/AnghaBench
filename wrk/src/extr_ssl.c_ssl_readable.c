
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl; } ;
typedef TYPE_1__ connection ;


 size_t SSL_pending (int ) ;

size_t ssl_readable(connection *c) {
    return SSL_pending(c->ssl);
}
