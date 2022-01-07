
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* connection; TYPE_2__* proxy; } ;
typedef TYPE_3__ ngx_mail_session_t ;
struct TYPE_11__ {int fd; } ;
struct TYPE_10__ {int log; } ;
struct TYPE_7__ {TYPE_6__* connection; } ;
struct TYPE_8__ {TYPE_1__ upstream; } ;


 int NGX_LOG_DEBUG_MAIL ;
 int ngx_close_connection (TYPE_6__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_mail_close_connection (TYPE_5__*) ;

__attribute__((used)) static void
ngx_mail_proxy_close_session(ngx_mail_session_t *s)
{
    if (s->proxy->upstream.connection) {
        ngx_log_debug1(NGX_LOG_DEBUG_MAIL, s->connection->log, 0,
                       "close mail proxy connection: %d",
                       s->proxy->upstream.connection->fd);

        ngx_close_connection(s->proxy->upstream.connection);
    }

    ngx_mail_close_connection(s->connection);
}
