
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rules_un; int * rules6; int * rules; } ;
typedef TYPE_1__ ngx_http_access_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;

__attribute__((used)) static char *
ngx_http_access_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_access_loc_conf_t *prev = parent;
    ngx_http_access_loc_conf_t *conf = child;

    if (conf->rules == ((void*)0)






    ) {
        conf->rules = prev->rules;






    }

    return NGX_CONF_OK;
}
