
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;


struct TYPE_36__ {int nelts; } ;
struct TYPE_41__ {scalar_t__ len; } ;
struct TYPE_38__ {int blocked; int mail_state; int quit; TYPE_2__* buffer; int arg_start; int state; TYPE_1__ args; TYPE_6__ out; int command; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_39__ {scalar_t__ timedout; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_40__ {int timedout; int write; int log; TYPE_3__* data; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_37__ {int start; int last; int pos; } ;


 int NGX_AGAIN ;


 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_INFO ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_mail_auth (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_auth_cram_md5 (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_auth_external (TYPE_3__*,TYPE_5__*,int ) ;
 int ngx_mail_auth_login_password (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_auth_login_username (TYPE_3__*,TYPE_5__*,int ) ;
 int ngx_mail_auth_plain (TYPE_3__*,TYPE_5__*,int ) ;
 int ngx_mail_close_connection (TYPE_5__*) ;
 int ngx_mail_pop3_apop (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_pop3_auth (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_pop3_capa (TYPE_3__*,TYPE_5__*,int) ;
 int ngx_mail_pop3_pass (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_pop3_stls (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_pop3_user (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_read_command (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_send (int ) ;
 int ngx_mail_session_internal_server_error (TYPE_3__*) ;
 int ngx_str_set (TYPE_6__*,int ) ;
 int pop3_invalid_command ;
 int pop3_ok ;
 int pop3_password ;

void
ngx_mail_pop3_auth_state(ngx_event_t *rev)
{
    ngx_int_t rc;
    ngx_connection_t *c;
    ngx_mail_session_t *s;

    c = rev->data;
    s = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, c->log, 0, "pop3 auth state");

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        ngx_mail_close_connection(c);
        return;
    }

    if (s->out.len) {
        ngx_log_debug0(NGX_LOG_DEBUG_MAIL, c->log, 0, "pop3 send handler busy");
        s->blocked = 1;
        return;
    }

    s->blocked = 0;

    rc = ngx_mail_read_command(s, c);

    if (rc == NGX_AGAIN || rc == 146) {
        return;
    }

    ngx_str_set(&s->out, pop3_ok);

    if (rc == 144) {
        switch (s->mail_state) {

        case 129:

            switch (s->command) {

            case 136:
                rc = ngx_mail_pop3_user(s, c);
                break;

            case 141:
                rc = ngx_mail_pop3_capa(s, c, 1);
                break;

            case 143:
                rc = ngx_mail_pop3_apop(s, c);
                break;

            case 142:
                rc = ngx_mail_pop3_auth(s, c);
                break;

            case 138:
                s->quit = 1;
                break;

            case 140:
                break;

            case 137:
                rc = ngx_mail_pop3_stls(s, c);
                break;

            default:
                rc = 145;
                break;
            }

            break;

        case 128:

            switch (s->command) {

            case 139:
                rc = ngx_mail_pop3_pass(s, c);
                break;

            case 141:
                rc = ngx_mail_pop3_capa(s, c, 0);
                break;

            case 138:
                s->quit = 1;
                break;

            case 140:
                break;

            default:
                rc = 145;
                break;
            }

            break;


        case 130:
            break;

        case 132:
            rc = ngx_mail_auth_login_username(s, c, 0);

            ngx_str_set(&s->out, pop3_password);
            s->mail_state = 133;
            break;

        case 133:
            rc = ngx_mail_auth_login_password(s, c);
            break;

        case 131:
            rc = ngx_mail_auth_plain(s, c, 0);
            break;

        case 135:
            rc = ngx_mail_auth_cram_md5(s, c);
            break;

        case 134:
            rc = ngx_mail_auth_external(s, c, 0);
            break;
        }
    }

    switch (rc) {

    case 147:
        ngx_mail_auth(s, c);
        return;

    case 146:
        ngx_mail_session_internal_server_error(s);
        return;

    case 145:
        s->mail_state = 129;
        s->state = 0;

        ngx_str_set(&s->out, pop3_invalid_command);



    case 144:

        s->args.nelts = 0;
        s->buffer->pos = s->buffer->start;
        s->buffer->last = s->buffer->start;

        if (s->state) {
            s->arg_start = s->buffer->start;
        }

        ngx_mail_send(c->write);
    }
}
