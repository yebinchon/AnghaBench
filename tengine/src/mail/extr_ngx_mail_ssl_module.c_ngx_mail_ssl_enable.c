
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int line; int file; int listen; scalar_t__ starttls; scalar_t__ enable; } ;
typedef TYPE_4__ ngx_mail_ssl_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {TYPE_3__* conf_file; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_9__ {int data; } ;
struct TYPE_10__ {TYPE_1__ name; } ;
struct TYPE_11__ {int line; TYPE_2__ file; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_MAIL_STARTTLS_OFF ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*) ;
 char* ngx_conf_set_flag_slot (TYPE_5__*,int *,void*) ;

__attribute__((used)) static char *
ngx_mail_ssl_enable(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_mail_ssl_conf_t *scf = conf;

    char *rv;

    rv = ngx_conf_set_flag_slot(cf, cmd, conf);

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    if (scf->enable && (ngx_int_t) scf->starttls > NGX_MAIL_STARTTLS_OFF) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "\"starttls\" directive conflicts with \"ssl on\"");
        return NGX_CONF_ERROR;
    }

    if (!scf->listen) {
        scf->file = cf->conf_file->file.name.data;
        scf->line = cf->conf_file->line;
    }

    return NGX_CONF_OK;
}
