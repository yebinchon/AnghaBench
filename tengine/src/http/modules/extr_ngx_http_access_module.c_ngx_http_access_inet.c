
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {int mask; int addr; int deny; } ;
typedef TYPE_4__ ngx_http_access_rule_t ;
struct TYPE_13__ {TYPE_2__* rules; } ;
typedef TYPE_5__ ngx_http_access_loc_conf_t ;
typedef int in_addr_t ;
struct TYPE_10__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_9__ {int log; } ;


 int NGX_DECLINED ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_access_found (TYPE_3__*,int ) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_access_inet(ngx_http_request_t *r, ngx_http_access_loc_conf_t *alcf,
    in_addr_t addr)
{
    ngx_uint_t i;
    ngx_http_access_rule_t *rule;

    rule = alcf->rules->elts;
    for (i = 0; i < alcf->rules->nelts; i++) {

        ngx_log_debug3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "access: %08XD %08XD %08XD",
                       addr, rule[i].mask, rule[i].addr);

        if ((addr & rule[i].mask) == rule[i].addr) {
            return ngx_http_access_found(r, rule[i].deny);
        }
    }

    return NGX_DECLINED;
}
