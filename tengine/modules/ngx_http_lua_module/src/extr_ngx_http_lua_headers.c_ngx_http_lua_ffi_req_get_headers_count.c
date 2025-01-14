
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
struct TYPE_10__ {int nelts; struct TYPE_10__* next; } ;
typedef TYPE_4__ ngx_list_part_t ;
struct TYPE_7__ {TYPE_4__ part; } ;
struct TYPE_8__ {TYPE_1__ headers; } ;
struct TYPE_11__ {TYPE_3__* connection; TYPE_2__ headers_in; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_9__ {scalar_t__ fd; int log; } ;


 int NGX_HTTP_LUA_FFI_BAD_CONTEXT ;
 int NGX_HTTP_LUA_MAX_HEADERS ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;

int
ngx_http_lua_ffi_req_get_headers_count(ngx_http_request_t *r, int max,
    int *truncated)
{
    int count;
    ngx_list_part_t *part;

    if (r->connection->fd == (ngx_socket_t) -1) {
        return NGX_HTTP_LUA_FFI_BAD_CONTEXT;
    }

    *truncated = 0;

    if (max < 0) {
        max = NGX_HTTP_LUA_MAX_HEADERS;
    }

    part = &r->headers_in.headers.part;
    count = part->nelts;
    while (part->next != ((void*)0)) {
        part = part->next;
        count += part->nelts;
    }

    if (max > 0 && count > max) {
        *truncated = 1;

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua exceeding request header limit %d > %d", count,
                       max);
        count = max;
    }

    return count;
}
