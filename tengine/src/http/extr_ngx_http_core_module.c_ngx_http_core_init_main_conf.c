
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ncaptures; void* variables_hash_bucket_size; void* variables_hash_max_size; void* server_names_hash_bucket_size; void* server_names_hash_max_size; } ;
typedef TYPE_1__ ngx_http_core_main_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 void* ngx_align (void*,int) ;
 int ngx_cacheline_size ;
 int ngx_conf_init_uint_value (void*,int) ;

__attribute__((used)) static char *
ngx_http_core_init_main_conf(ngx_conf_t *cf, void *conf)
{
    ngx_http_core_main_conf_t *cmcf = conf;

    ngx_conf_init_uint_value(cmcf->server_names_hash_max_size, 512);
    ngx_conf_init_uint_value(cmcf->server_names_hash_bucket_size,
                             ngx_cacheline_size);

    cmcf->server_names_hash_bucket_size =
            ngx_align(cmcf->server_names_hash_bucket_size, ngx_cacheline_size);


    ngx_conf_init_uint_value(cmcf->variables_hash_max_size, 1024);
    ngx_conf_init_uint_value(cmcf->variables_hash_bucket_size, 64);

    cmcf->variables_hash_bucket_size =
               ngx_align(cmcf->variables_hash_bucket_size, ngx_cacheline_size);

    if (cmcf->ncaptures) {
        cmcf->ncaptures = (cmcf->ncaptures + 1) * 3;
    }

    return NGX_CONF_OK;
}
