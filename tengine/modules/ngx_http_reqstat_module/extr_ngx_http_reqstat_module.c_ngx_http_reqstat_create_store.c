
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_str_t ;
struct TYPE_18__ {int name; } ;
struct TYPE_19__ {TYPE_3__ shm; TYPE_7__* data; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
struct TYPE_20__ {TYPE_2__* connection; int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_21__ {int bypass; int monitor_index; int value_index; TYPE_8__* conf; } ;
typedef TYPE_6__ ngx_http_reqstat_store_t ;
typedef int ngx_http_reqstat_rbnode_t ;
struct TYPE_22__ {int * val; int value; } ;
typedef TYPE_7__ ngx_http_reqstat_ctx_t ;
struct TYPE_23__ {TYPE_1__* monitor; int bypass; } ;
typedef TYPE_8__ ngx_http_reqstat_conf_t ;
struct TYPE_17__ {int log; } ;
struct TYPE_16__ {size_t nelts; TYPE_4__** elts; } ;




 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int const ngx_array_init (int *,int ,size_t,int) ;
 void* ngx_array_push (int *) ;
 scalar_t__ ngx_http_complex_value (TYPE_5__*,int *,int *) ;
 int * ngx_http_reqstat_rbtree_lookup (TYPE_4__*,int *) ;
 int ngx_http_test_predicates (TYPE_5__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 TYPE_6__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_http_reqstat_store_t *
ngx_http_reqstat_create_store(ngx_http_request_t *r,
    ngx_http_reqstat_conf_t *rlcf)
{
    ngx_str_t val, *value;
    ngx_uint_t i;
    ngx_shm_zone_t **shm_zone, *z;
    ngx_http_reqstat_ctx_t *ctx;
    ngx_http_reqstat_store_t *store;
    ngx_http_reqstat_rbnode_t *fnode, **fnode_store;

    store = ngx_pcalloc(r->pool, sizeof(ngx_http_reqstat_store_t));
    if (store == ((void*)0)) {
        return ((void*)0);
    }

    if (rlcf->monitor == ((void*)0)) {
        store->bypass = 1;
        return store;
    }

    store->conf = rlcf;

    switch (ngx_http_test_predicates(r, rlcf->bypass)) {

    case 128:
        return ((void*)0);

    case 129:
        store->bypass = 1;
        return store;

    default:
        break;
    }

    if (ngx_array_init(&store->monitor_index, r->pool, rlcf->monitor->nelts,
                       sizeof(ngx_http_reqstat_rbnode_t *)) == 128)
    {
        return ((void*)0);
    }

    if (ngx_array_init(&store->value_index, r->pool, rlcf->monitor->nelts,
                       sizeof(ngx_str_t)) == 128)
    {
        return ((void*)0);
    }

    shm_zone = rlcf->monitor->elts;
    for (i = 0; i < rlcf->monitor->nelts; i++) {
        z = shm_zone[i];
        ctx = z->data;

        if (ngx_http_complex_value(r, &ctx->value, &val) != NGX_OK) {
            ngx_log_error(NGX_LOG_WARN, r->connection->log, 0,
                          "failed to reap the key \"%V\"", ctx->val);
            continue;
        }

        value = ngx_array_push(&store->value_index);
        *value = val;

        fnode = ngx_http_reqstat_rbtree_lookup(shm_zone[i], &val);
        if (fnode == ((void*)0)) {
            ngx_log_error(NGX_LOG_WARN, r->connection->log, 0,
                          "failed to alloc node in zone \"%V\", "
                          "enlarge it please",
                          &z->shm.name);
        }

        fnode_store = ngx_array_push(&store->monitor_index);
        *fnode_store = fnode;
    }

    return store;
}
