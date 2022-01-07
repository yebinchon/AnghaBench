
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int ngx_int_t ;
typedef int ngx_http_reqstat_rbnode_t ;


 int NGX_HTTP_REQSTAT_REQ_FIELD (int *,int ) ;
 int ngx_atomic_fetch_add (int ,int ) ;

void
ngx_http_reqstat_count(void *data, off_t offset, ngx_int_t incr)
{
    ngx_http_reqstat_rbnode_t *node = data;

    (void) ngx_atomic_fetch_add(NGX_HTTP_REQSTAT_REQ_FIELD(node, offset), incr);
}
