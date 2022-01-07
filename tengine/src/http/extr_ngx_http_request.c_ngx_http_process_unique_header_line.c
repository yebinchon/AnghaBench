
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_8__ {int value; int key; } ;
typedef TYPE_2__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_1__* connection; int headers_in; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_7__ {int log; } ;


 int NGX_ERROR ;
 int NGX_HTTP_BAD_REQUEST ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 int ngx_http_finalize_request (TYPE_3__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int *,int *,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_process_unique_header_line(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_table_elt_t **ph;

    ph = (ngx_table_elt_t **) ((char *) &r->headers_in + offset);

    if (*ph == ((void*)0)) {
        *ph = h;
        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                  "client sent duplicate header line: \"%V: %V\", "
                  "previous value: \"%V: %V\"",
                  &h->key, &h->value, &(*ph)->key, &(*ph)->value);

    ngx_http_finalize_request(r, NGX_HTTP_BAD_REQUEST);

    return NGX_ERROR;
}
