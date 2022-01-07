
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int ngx_http_dyups_body_handler ;
 scalar_t__ ngx_http_read_client_request_body (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_dyups_interface_read_body(ngx_http_request_t *r)
{
    ngx_int_t rc;

    rc = ngx_http_read_client_request_body(r, ngx_http_dyups_body_handler);

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return rc;
    }

    return NGX_DONE;
}
