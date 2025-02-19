
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_11__ {int * data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_10__ {TYPE_2__* elts; } ;
struct TYPE_12__ {int auth_method; TYPE_2__ login; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {int log; int pool; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_INFO ;
 int NGX_MAIL_AUTH_EXTERNAL ;
 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 scalar_t__ NGX_OK ;
 int ngx_base64_decoded_length (int ) ;
 scalar_t__ ngx_decode_base64 (TYPE_2__*,TYPE_2__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int * ngx_pnalloc (int ,int ) ;

ngx_int_t
ngx_mail_auth_external(ngx_mail_session_t *s, ngx_connection_t *c,
    ngx_uint_t n)
{
    ngx_str_t *arg, external;

    arg = s->args.elts;

    ngx_log_debug1(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "mail auth external: \"%V\"", &arg[n]);

    external.data = ngx_pnalloc(c->pool, ngx_base64_decoded_length(arg[n].len));
    if (external.data == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_decode_base64(&external, &arg[n]) != NGX_OK) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
            "client sent invalid base64 encoding in AUTH EXTERNAL command");
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    s->login.len = external.len;
    s->login.data = external.data;

    ngx_log_debug1(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "mail auth external: \"%V\"", &s->login);

    s->auth_method = NGX_MAIL_AUTH_EXTERNAL;

    return NGX_DONE;
}
