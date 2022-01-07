
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_5__ {int node; } ;
typedef TYPE_1__ ngx_http_upstream_srv_conf_t ;
struct TYPE_6__ {int rbtree; } ;
typedef TYPE_2__ ngx_http_upstream_main_conf_t ;


 int NGX_OK ;
 int ngx_rbtree_delete (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_dyups_del_upstream_filter(ngx_http_upstream_main_conf_t *umcf,
    ngx_http_upstream_srv_conf_t *uscf)
{



    return NGX_OK;
}
