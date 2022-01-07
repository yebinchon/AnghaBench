
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_10__ {TYPE_2__* elts; } ;
struct TYPE_12__ {TYPE_2__ passwd; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {int log; int pool; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_INFO ;
 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 scalar_t__ NGX_OK ;
 int ngx_base64_decoded_length (int ) ;
 scalar_t__ ngx_decode_base64 (TYPE_2__*,TYPE_2__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int * ngx_pnalloc (int ,int ) ;

ngx_int_t
ngx_mail_auth_login_password(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_t *arg;

    arg = s->args.elts;






    s->passwd.data = ngx_pnalloc(c->pool,
                                 ngx_base64_decoded_length(arg[0].len));
    if (s->passwd.data == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_decode_base64(&s->passwd, &arg[0]) != NGX_OK) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
            "client sent invalid base64 encoding in AUTH LOGIN command");
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }






    return NGX_DONE;
}
