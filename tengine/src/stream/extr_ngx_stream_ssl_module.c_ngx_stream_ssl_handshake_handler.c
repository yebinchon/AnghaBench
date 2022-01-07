
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_stream_session_t ;
struct TYPE_6__ {TYPE_4__* read; TYPE_1__* ssl; int * data; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_7__ {scalar_t__ timer_set; } ;
struct TYPE_5__ {int handshaked; } ;


 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int ngx_del_timer (TYPE_4__*) ;
 int ngx_stream_core_run_phases (int *) ;
 int ngx_stream_finalize_session (int *,int ) ;

__attribute__((used)) static void
ngx_stream_ssl_handshake_handler(ngx_connection_t *c)
{
    ngx_stream_session_t *s;

    s = c->data;

    if (!c->ssl->handshaked) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    if (c->read->timer_set) {
        ngx_del_timer(c->read);
    }

    ngx_stream_core_run_phases(s);
}
