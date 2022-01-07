
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* d_servers; int down_servers; int number; TYPE_5__* tree; TYPE_4__*** real_node; } ;
typedef TYPE_3__ ngx_http_upstream_chash_srv_conf_t ;
struct TYPE_11__ {size_t rnindex; int down; size_t index; TYPE_1__* peer; } ;
typedef TYPE_4__ ngx_http_upstream_chash_server_t ;
struct TYPE_12__ {int (* del ) (TYPE_5__*,int,int,int ,size_t) ;} ;
struct TYPE_9__ {int queue; scalar_t__ timeout; } ;
struct TYPE_8__ {scalar_t__ fail_timeout; } ;


 int ngx_queue_insert_head (int *,int *) ;
 scalar_t__ ngx_time () ;
 int stub1 (TYPE_5__*,int,int,int ,size_t) ;

__attribute__((used)) static void
ngx_http_upstream_chash_delete_node(ngx_http_upstream_chash_srv_conf_t *ucscf,
    ngx_http_upstream_chash_server_t *server)
{
    ngx_http_upstream_chash_server_t **servers, *p;
    servers = ucscf->real_node[server->rnindex];

    for (; *servers; servers++) {
        p = *servers;
        if (!p->down) {
            ucscf->tree->del(ucscf->tree, 1, 1, ucscf->number, p->index);
            p->down = 1;
            ucscf->d_servers[p->index].timeout = ngx_time()
                                               + p->peer->fail_timeout;
            ngx_queue_insert_head(&ucscf->down_servers,
                                  &ucscf->d_servers[p->index].queue);
        }
    }
}
