
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ user_file; int * realm; } ;
typedef TYPE_3__ ngx_http_auth_basic_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;

__attribute__((used)) static char *
ngx_http_auth_basic_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_auth_basic_loc_conf_t *prev = parent;
    ngx_http_auth_basic_loc_conf_t *conf = child;

    if (conf->realm == ((void*)0)) {
        conf->realm = prev->realm;
    }

    if (conf->user_file.value.data == ((void*)0)) {
        conf->user_file = prev->user_file;
    }

    return NGX_CONF_OK;
}
