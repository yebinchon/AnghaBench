
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_2__ {scalar_t__ hash; } ;
typedef TYPE_1__ ngx_http_upstream_chash_server_t ;


 int NGX_CHASH_EQUAL ;
 int NGX_CHASH_GREAT ;
 int NGX_CHASH_LESS ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_chash_cmp(const void *one, const void *two)
{
    ngx_http_upstream_chash_server_t *frist, *second;

    frist = (ngx_http_upstream_chash_server_t *)one;
    second = (ngx_http_upstream_chash_server_t *) two;

    if (frist->hash > second->hash) {
        return NGX_CHASH_GREAT;

    } else if (frist->hash == second->hash) {
        return NGX_CHASH_EQUAL;

    } else {
        return NGX_CHASH_LESS;
    }
}
