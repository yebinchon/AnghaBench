
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* proxy; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_mail_session_t ;
struct TYPE_12__ {int fd; } ;
struct TYPE_9__ {TYPE_7__* connection; } ;
struct TYPE_10__ {TYPE_2__ upstream; } ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_MAIL ;
 int ngx_close_connection (TYPE_7__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_mail_session_internal_server_error (TYPE_4__*) ;

__attribute__((used)) static void
ngx_mail_proxy_internal_server_error(ngx_mail_session_t *s)
{
    if (s->proxy->upstream.connection) {
        ngx_log_debug1(NGX_LOG_DEBUG_MAIL, s->connection->log, 0,
                       "close mail proxy connection: %d",
                       s->proxy->upstream.connection->fd);

        ngx_close_connection(s->proxy->upstream.connection);
    }

    ngx_mail_session_internal_server_error(s);
}
