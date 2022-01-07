
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ len; char* data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int args; } ;
typedef TYPE_2__ ngx_http_request_t ;


 int NGX_DONE ;
 int NGX_HTTP_SERVICE_UNAVAILABLE ;
 int ngx_http_finalize_request (TYPE_2__*,int ) ;
 int ngx_http_internal_redirect (TYPE_2__*,TYPE_1__*,int *) ;
 int ngx_http_named_location (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_sysguard_do_redirect(ngx_http_request_t *r, ngx_str_t *path)
{
    if (path->len == 0) {
        return NGX_HTTP_SERVICE_UNAVAILABLE;
    } else if (path->data[0] == '@') {
        (void) ngx_http_named_location(r, path);
    } else {
        (void) ngx_http_internal_redirect(r, path, &r->args);
    }

    ngx_http_finalize_request(r, NGX_DONE);

    return NGX_DONE;
}
