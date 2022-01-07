
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
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_stream_session_t ;
struct TYPE_12__ {TYPE_2__* rules; } ;
typedef TYPE_4__ ngx_stream_access_srv_conf_t ;
struct TYPE_13__ {int mask; int addr; int deny; } ;
typedef TYPE_5__ ngx_stream_access_rule_t ;
typedef int ngx_int_t ;
typedef int in_addr_t ;
struct TYPE_10__ {size_t nelts; TYPE_5__* elts; } ;
struct TYPE_9__ {int log; } ;


 int NGX_DECLINED ;
 int NGX_LOG_DEBUG_STREAM ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int,int) ;
 int ngx_stream_access_found (TYPE_3__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_stream_access_inet(ngx_stream_session_t *s,
    ngx_stream_access_srv_conf_t *ascf, in_addr_t addr)
{
    ngx_uint_t i;
    ngx_stream_access_rule_t *rule;

    rule = ascf->rules->elts;
    for (i = 0; i < ascf->rules->nelts; i++) {

        ngx_log_debug3(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                       "access: %08XD %08XD %08XD",
                       addr, rule[i].mask, rule[i].addr);

        if ((addr & rule[i].mask) == rule[i].addr) {
            return ngx_stream_access_found(s, rule[i].deny);
        }
    }

    return NGX_DECLINED;
}
