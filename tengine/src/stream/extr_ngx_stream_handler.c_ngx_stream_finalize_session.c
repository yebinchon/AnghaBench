
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_5__ {TYPE_4__* connection; int status; } ;
typedef TYPE_1__ ngx_stream_session_t ;
struct TYPE_6__ {int log; } ;


 int NGX_LOG_DEBUG_STREAM ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_stream_close_connection (TYPE_4__*) ;
 int ngx_stream_log_session (TYPE_1__*) ;

void
ngx_stream_finalize_session(ngx_stream_session_t *s, ngx_uint_t rc)
{
    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "finalize stream session: %i", rc);

    s->status = rc;

    ngx_stream_log_session(s);

    ngx_stream_close_connection(s->connection);
}
