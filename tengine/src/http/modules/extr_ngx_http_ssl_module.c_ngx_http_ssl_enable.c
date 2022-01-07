
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int line; int file; } ;
typedef TYPE_4__ ngx_http_ssl_srv_conf_t ;
struct TYPE_12__ {TYPE_3__* conf_file; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_8__ {int data; } ;
struct TYPE_9__ {TYPE_1__ name; } ;
struct TYPE_10__ {int line; TYPE_2__ file; } ;


 char* NGX_CONF_OK ;
 char* ngx_conf_set_flag_slot (TYPE_5__*,int *,void*) ;

__attribute__((used)) static char *
ngx_http_ssl_enable(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_ssl_srv_conf_t *sscf = conf;

    char *rv;

    rv = ngx_conf_set_flag_slot(cf, cmd, conf);

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    sscf->file = cf->conf_file->file.name.data;
    sscf->line = cf->conf_file->line;

    return NGX_CONF_OK;
}
