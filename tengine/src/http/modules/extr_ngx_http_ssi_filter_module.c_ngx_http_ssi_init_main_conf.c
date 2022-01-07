
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nelts; int elts; } ;
struct TYPE_9__ {TYPE_1__ keys; } ;
struct TYPE_10__ {TYPE_2__ commands; int hash; } ;
typedef TYPE_3__ ngx_http_ssi_main_conf_t ;
struct TYPE_11__ {int max_size; char* name; int * temp_pool; int pool; int bucket_size; int key; int * hash; } ;
typedef TYPE_4__ ngx_hash_init_t ;
struct TYPE_12__ {int pool; } ;
typedef TYPE_5__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int ngx_cacheline_size ;
 scalar_t__ ngx_hash_init (TYPE_4__*,int ,int ) ;
 int ngx_hash_key ;

__attribute__((used)) static char *
ngx_http_ssi_init_main_conf(ngx_conf_t *cf, void *conf)
{
    ngx_http_ssi_main_conf_t *smcf = conf;

    ngx_hash_init_t hash;

    hash.hash = &smcf->hash;
    hash.key = ngx_hash_key;
    hash.max_size = 1024;
    hash.bucket_size = ngx_cacheline_size;
    hash.name = "ssi_command_hash";
    hash.pool = cf->pool;
    hash.temp_pool = ((void*)0);

    if (ngx_hash_init(&hash, smcf->commands.keys.elts,
                      smcf->commands.keys.nelts)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
