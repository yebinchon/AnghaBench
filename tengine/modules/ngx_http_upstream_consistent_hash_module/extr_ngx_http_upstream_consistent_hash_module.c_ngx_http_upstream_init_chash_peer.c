
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int len; int data; } ;
typedef TYPE_5__ ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_http_upstream_srv_conf_t ;
struct TYPE_19__ {TYPE_2__* values; TYPE_1__* lengths; } ;
typedef TYPE_6__ ngx_http_upstream_chash_srv_conf_t ;
struct TYPE_20__ {int hash; TYPE_6__* ucscf; } ;
typedef TYPE_7__ ngx_http_upstream_chash_peer_data_t ;
struct TYPE_21__ {TYPE_4__* upstream; int pool; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_16__ {int save_session; int set_session; TYPE_7__* data; int free; int get; } ;
struct TYPE_17__ {TYPE_3__ peer; } ;
struct TYPE_15__ {int elts; } ;
struct TYPE_14__ {int elts; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_6__* ngx_http_conf_upstream_srv_conf (int *,int ) ;
 int * ngx_http_script_run (TYPE_8__*,TYPE_5__*,int ,int ,int ) ;
 int ngx_http_upstream_chash_save_peer_session ;
 int ngx_http_upstream_chash_set_peer_session ;
 int ngx_http_upstream_consistent_hash_module ;
 int ngx_http_upstream_free_chash_peer ;
 int ngx_http_upstream_get_chash_peer ;
 int ngx_murmur_hash2 (int ,int ) ;
 TYPE_7__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_chash_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_str_t hash_value;
    ngx_http_upstream_chash_srv_conf_t *ucscf;
    ngx_http_upstream_chash_peer_data_t *uchpd;

    ucscf = ngx_http_conf_upstream_srv_conf(us,
                                     ngx_http_upstream_consistent_hash_module);
    if (ucscf == ((void*)0)) {
        return NGX_ERROR;
    }

    uchpd = ngx_pcalloc(r->pool, sizeof(ngx_http_upstream_chash_peer_data_t));
    if (uchpd == ((void*)0)) {
        return NGX_ERROR;
    }

    uchpd->ucscf = ucscf;
    if (ngx_http_script_run(r, &hash_value,
                ucscf->lengths->elts, 0, ucscf->values->elts) == ((void*)0)) {
        return NGX_ERROR;
    }

    uchpd->hash = ngx_murmur_hash2(hash_value.data, hash_value.len);

    r->upstream->peer.get = ngx_http_upstream_get_chash_peer;
    r->upstream->peer.free = ngx_http_upstream_free_chash_peer;
    r->upstream->peer.data = uchpd;






    return NGX_OK;
}
