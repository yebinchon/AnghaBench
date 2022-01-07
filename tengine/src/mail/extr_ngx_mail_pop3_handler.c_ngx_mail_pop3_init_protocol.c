
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_11__ {int mail_state; int * buffer; int args; } ;
typedef TYPE_2__ ngx_mail_session_t ;
struct TYPE_12__ {scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_13__ {int timedout; TYPE_1__* read; int pool; TYPE_2__* data; TYPE_9__* log; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_14__ {char* action; } ;
struct TYPE_10__ {int (* handler ) (TYPE_3__*) ;} ;


 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_INFO ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 int * ngx_create_temp_buf (int ,int) ;
 int ngx_log_error (int ,TYPE_9__*,int ,char*) ;
 int ngx_mail_close_connection (TYPE_4__*) ;
 int ngx_mail_pop3_auth_state (TYPE_3__*) ;
 int ngx_mail_session_internal_server_error (TYPE_2__*) ;
 int ngx_pop3_start ;

void
ngx_mail_pop3_init_protocol(ngx_event_t *rev)
{
    ngx_connection_t *c;
    ngx_mail_session_t *s;

    c = rev->data;

    c->log->action = "in auth state";

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        ngx_mail_close_connection(c);
        return;
    }

    s = c->data;

    if (s->buffer == ((void*)0)) {
        if (ngx_array_init(&s->args, c->pool, 2, sizeof(ngx_str_t))
            == NGX_ERROR)
        {
            ngx_mail_session_internal_server_error(s);
            return;
        }

        s->buffer = ngx_create_temp_buf(c->pool, 128);
        if (s->buffer == ((void*)0)) {
            ngx_mail_session_internal_server_error(s);
            return;
        }
    }

    s->mail_state = ngx_pop3_start;
    c->read->handler = ngx_mail_pop3_auth_state;

    ngx_mail_pop3_auth_state(rev);
}
