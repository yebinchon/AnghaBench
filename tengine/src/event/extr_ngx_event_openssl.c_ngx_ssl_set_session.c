
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_ssl_session_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int log; TYPE_1__* ssl; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_4__ {int connection; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 scalar_t__ SSL_set_session (int ,int *) ;
 int ngx_ssl_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_ssl_set_session(ngx_connection_t *c, ngx_ssl_session_t *session)
{
    if (session) {
        if (SSL_set_session(c->ssl->connection, session) == 0) {
            ngx_ssl_error(NGX_LOG_ALERT, c->log, 0, "SSL_set_session() failed");
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
