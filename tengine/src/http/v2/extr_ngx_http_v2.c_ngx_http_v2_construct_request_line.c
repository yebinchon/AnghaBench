
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_int_t ;
struct TYPE_14__ {char* data; scalar_t__ len; } ;
struct TYPE_11__ {scalar_t__ len; int data; } ;
struct TYPE_10__ {scalar_t__ len; int data; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_13__ {TYPE_6__ request_line; TYPE_4__* connection; TYPE_3__ unparsed_uri; TYPE_2__ method_name; int stream; int pool; TYPE_1__ schema; } ;
typedef TYPE_5__ ngx_http_request_t ;
typedef int ending ;
struct TYPE_12__ {int log; } ;


 int NGX_ERROR ;
 int NGX_HTTP_BAD_REQUEST ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 char* ngx_cpymem (char*,int ,scalar_t__) ;
 int ngx_http_finalize_request (TYPE_5__*,int ) ;
 int ngx_http_v2_close_stream (int ,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_6__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memcpy (char*,char const*,int) ;
 char* ngx_pnalloc (int ,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_construct_request_line(ngx_http_request_t *r)
{
    u_char *p;

    static const u_char ending[] = " HTTP/2.0";

    if (r->method_name.len == 0
        || r->schema.len == 0
        || r->unparsed_uri.len == 0)
    {
        if (r->method_name.len == 0) {
            ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent no :method header");

        } else if (r->schema.len == 0) {
            ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent no :scheme header");

        } else {
            ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent no :path header");
        }

        ngx_http_finalize_request(r, NGX_HTTP_BAD_REQUEST);
        return NGX_ERROR;
    }

    r->request_line.len = r->method_name.len + 1
                          + r->unparsed_uri.len
                          + sizeof(ending) - 1;

    p = ngx_pnalloc(r->pool, r->request_line.len + 1);
    if (p == ((void*)0)) {
        ngx_http_v2_close_stream(r->stream, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return NGX_ERROR;
    }

    r->request_line.data = p;

    p = ngx_cpymem(p, r->method_name.data, r->method_name.len);

    *p++ = ' ';

    p = ngx_cpymem(p, r->unparsed_uri.data, r->unparsed_uri.len);

    ngx_memcpy(p, ending, sizeof(ending));

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http2 request line: \"%V\"", &r->request_line);

    return NGX_OK;
}
