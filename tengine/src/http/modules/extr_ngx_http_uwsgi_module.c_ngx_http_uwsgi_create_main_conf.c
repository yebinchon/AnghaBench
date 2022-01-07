
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void ngx_http_uwsgi_main_conf_t ;
typedef int ngx_http_file_cache_t ;
struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ ngx_conf_t ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static void *
ngx_http_uwsgi_create_main_conf(ngx_conf_t *cf)
{
    ngx_http_uwsgi_main_conf_t *conf;

    conf = ngx_pcalloc(cf->pool, sizeof(ngx_http_uwsgi_main_conf_t));
    if (conf == ((void*)0)) {
        return ((void*)0);
    }
    return conf;
}
