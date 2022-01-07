
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_mail_session_t ;
struct TYPE_5__ {TYPE_2__* data; int log; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_6__ {int * data; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_LOG_DEBUG_MAIL ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_write_event (TYPE_1__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_mail_proxy_close_session (int *) ;

__attribute__((used)) static void
ngx_mail_proxy_dummy_handler(ngx_event_t *wev)
{
    ngx_connection_t *c;
    ngx_mail_session_t *s;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, wev->log, 0, "mail proxy dummy handler");

    if (ngx_handle_write_event(wev, 0) != NGX_OK) {
        c = wev->data;
        s = c->data;

        ngx_mail_proxy_close_session(s);
    }
}
