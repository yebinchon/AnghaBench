
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
typedef int ngx_err_t ;
struct TYPE_3__ {int log_error; int log; } ;
typedef TYPE_1__ ngx_connection_t ;


 int NGX_ECONNABORTED ;
 int NGX_ECONNREFUSED ;
 int NGX_ECONNRESET ;
 int NGX_EHOSTDOWN ;
 int NGX_EHOSTUNREACH ;
 int NGX_EINVAL ;
 int NGX_ENETDOWN ;
 int NGX_ENETUNREACH ;
 int NGX_ENOTCONN ;
 int NGX_EPIPE ;
 int NGX_ERROR ;



 int NGX_ETIMEDOUT ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_ERR ;
 int NGX_LOG_INFO ;
 int ngx_log_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_connection_error(ngx_connection_t *c, ngx_err_t err, char *text)
{
    ngx_uint_t level;



    if ((err == NGX_ECONNRESET



        ) && c->log_error == 130)
    {
        return 0;
    }







    if (err == 0
        || err == NGX_ECONNRESET



        || err == NGX_EPIPE

        || err == NGX_ENOTCONN
        || err == NGX_ETIMEDOUT
        || err == NGX_ECONNREFUSED
        || err == NGX_ENETDOWN
        || err == NGX_ENETUNREACH
        || err == NGX_EHOSTDOWN
        || err == NGX_EHOSTUNREACH)
    {
        switch (c->log_error) {

        case 129:
        case 130:
        case 128:
            level = NGX_LOG_INFO;
            break;

        default:
            level = NGX_LOG_ERR;
        }

    } else {
        level = NGX_LOG_ALERT;
    }

    ngx_log_error(level, c->log, err, text);

    return NGX_ERROR;
}
