
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_8__ {int async_enable; int ctx; int buffer_size; } ;
typedef TYPE_1__ ngx_ssl_t ;
struct TYPE_9__ {int buffer; int try_early_data; int * connection; int session_ctx; int buffer_size; } ;
typedef TYPE_2__ ngx_ssl_connection_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int async_enable; TYPE_2__* ssl; int log; int fd; int pool; } ;
typedef TYPE_3__ ngx_connection_t ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int NGX_SSL_BUFFER ;
 int NGX_SSL_CLIENT ;
 scalar_t__ SSL_CTX_get_max_early_data (int ) ;
 int SSL_OP_NO_RENEGOTIATION ;
 int * SSL_new (int ) ;
 int SSL_set_accept_state (int *) ;
 int SSL_set_connect_state (int *) ;
 scalar_t__ SSL_set_ex_data (int *,int ,TYPE_3__*) ;
 scalar_t__ SSL_set_fd (int *,int ) ;
 int SSL_set_options (int *,int ) ;
 TYPE_2__* ngx_pcalloc (int ,int) ;
 int ngx_ssl_connection_index ;
 int ngx_ssl_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_ssl_create_connection(ngx_ssl_t *ssl, ngx_connection_t *c, ngx_uint_t flags)
{
    ngx_ssl_connection_t *sc;

    sc = ngx_pcalloc(c->pool, sizeof(ngx_ssl_connection_t));
    if (sc == ((void*)0)) {
        return NGX_ERROR;
    }

    sc->buffer = ((flags & NGX_SSL_BUFFER) != 0);
    sc->buffer_size = ssl->buffer_size;

    sc->session_ctx = ssl->ctx;







    sc->connection = SSL_new(ssl->ctx);

    if (sc->connection == ((void*)0)) {
        ngx_ssl_error(NGX_LOG_ALERT, c->log, 0, "SSL_new() failed");
        return NGX_ERROR;
    }

    if (SSL_set_fd(sc->connection, c->fd) == 0) {
        ngx_ssl_error(NGX_LOG_ALERT, c->log, 0, "SSL_set_fd() failed");
        return NGX_ERROR;
    }

    if (flags & NGX_SSL_CLIENT) {
        SSL_set_connect_state(sc->connection);

    } else {
        SSL_set_accept_state(sc->connection);




    }

    if (SSL_set_ex_data(sc->connection, ngx_ssl_connection_index, c) == 0) {
        ngx_ssl_error(NGX_LOG_ALERT, c->log, 0, "SSL_set_ex_data() failed");
        return NGX_ERROR;
    }

    c->ssl = sc;




    return NGX_OK;
}
