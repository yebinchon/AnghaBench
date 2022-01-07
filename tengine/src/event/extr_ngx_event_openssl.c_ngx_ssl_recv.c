
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
struct TYPE_9__ {TYPE_2__* ssl; TYPE_1__* read; int log; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_8__ {int last; int connection; scalar_t__ in_early; } ;
struct TYPE_7__ {int error; int ready; int eof; } ;





 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int SSL_read (int ,int *,size_t) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_ssl_clear_error (int ) ;
 int ngx_ssl_handle_recv (TYPE_3__*,int) ;
 int ngx_ssl_recv_early (TYPE_3__*,int *,size_t) ;

ssize_t
ngx_ssl_recv(ngx_connection_t *c, u_char *buf, size_t size)
{
    int n, bytes;







    if (c->ssl->last == 128) {
        c->read->error = 1;
        return 128;
    }

    if (c->ssl->last == 129) {
        c->read->ready = 0;
        c->read->eof = 1;
        return 0;
    }

    bytes = 0;

    ngx_ssl_clear_error(c->log);






    for ( ;; ) {

        n = SSL_read(c->ssl->connection, buf, size);

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_read: %d", n);

        if (n > 0) {
            bytes += n;
        }

        c->ssl->last = ngx_ssl_handle_recv(c, n);

        if (c->ssl->last == NGX_OK) {

            size -= n;

            if (size == 0) {
                c->read->ready = 1;
                return bytes;
            }

            buf += n;

            continue;
        }

        if (bytes) {
            if (c->ssl->last != 130) {
                c->read->ready = 1;
            }

            return bytes;
        }

        switch (c->ssl->last) {

        case 129:
            c->read->ready = 0;
            c->read->eof = 1;
            return 0;

        case 128:
            c->read->error = 1;



        case 130:
            return c->ssl->last;
        }
    }
}
