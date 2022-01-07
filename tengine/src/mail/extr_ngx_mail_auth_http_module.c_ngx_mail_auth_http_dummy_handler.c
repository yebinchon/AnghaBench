
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_event_t ;


 int NGX_LOG_DEBUG_MAIL ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_mail_auth_http_dummy_handler(ngx_event_t *ev)
{
    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, ev->log, 0,
                   "mail auth http dummy handler");
}
