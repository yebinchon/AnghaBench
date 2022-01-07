
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_http_upstream_check_peer_t ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_7__ {int error; int * data; } ;
typedef TYPE_2__ ngx_connection_t ;


 scalar_t__ NGX_OK ;
 int ngx_http_upstream_check_clean_event (int *) ;
 int ngx_http_upstream_check_finish_handler (TYPE_1__*) ;
 scalar_t__ ngx_http_upstream_check_need_exit () ;
 scalar_t__ ngx_http_upstream_check_peek_one_byte (TYPE_2__*) ;
 int ngx_http_upstream_check_status_update (int *,int) ;

__attribute__((used)) static void
ngx_http_upstream_check_peek_handler(ngx_event_t *event)
{
    ngx_connection_t *c;
    ngx_http_upstream_check_peer_t *peer;

    if (ngx_http_upstream_check_need_exit()) {
        return;
    }

    c = event->data;
    peer = c->data;

    if (ngx_http_upstream_check_peek_one_byte(c) == NGX_OK) {
        ngx_http_upstream_check_status_update(peer, 1);

    } else {
        c->error = 1;
        ngx_http_upstream_check_status_update(peer, 0);
    }

    ngx_http_upstream_check_clean_event(peer);

    ngx_http_upstream_check_finish_handler(event);
}
