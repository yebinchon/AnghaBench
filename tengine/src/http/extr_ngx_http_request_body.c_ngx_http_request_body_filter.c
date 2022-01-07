
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {scalar_t__ chunked; } ;
struct TYPE_7__ {TYPE_1__ headers_in; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int ngx_chain_t ;


 int ngx_http_request_body_chunked_filter (TYPE_2__*,int *) ;
 int ngx_http_request_body_length_filter (TYPE_2__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_request_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    if (r->headers_in.chunked) {
        return ngx_http_request_body_chunked_filter(r, in);

    } else {
        return ngx_http_request_body_length_filter(r, in);
    }
}
