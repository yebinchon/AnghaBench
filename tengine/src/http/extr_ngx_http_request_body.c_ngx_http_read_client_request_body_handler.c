
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_8__ {int timedout; TYPE_1__* read; } ;
struct TYPE_7__ {scalar_t__ timedout; } ;


 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 scalar_t__ ngx_http_do_read_client_request_body (TYPE_3__*) ;
 int ngx_http_finalize_request (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void
ngx_http_read_client_request_body_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;

    if (r->connection->read->timedout) {
        r->connection->timedout = 1;
        ngx_http_finalize_request(r, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    rc = ngx_http_do_read_client_request_body(r);

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        ngx_http_finalize_request(r, rc);
    }
}
