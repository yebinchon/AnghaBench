
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {size_t len; int * data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_13__ {size_t content_length_n; } ;
struct TYPE_15__ {TYPE_2__ headers_in; TYPE_5__* request_body; scalar_t__ request_body_in_file_only; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_1__* buf; TYPE_6__* bufs; } ;
typedef TYPE_5__ ngx_http_request_body_t ;
struct TYPE_17__ {int * next; TYPE_7__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_18__ {int temporary; int * last; int * end; int * start; int * pos; } ;
typedef TYPE_7__ ngx_buf_t ;
typedef int lua_State ;
struct TYPE_12__ {scalar_t__ last; scalar_t__ end; scalar_t__ start; } ;


 scalar_t__ NGX_OK ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_4__*) ;
 TYPE_4__* ngx_http_lua_get_req (int *) ;
 scalar_t__ ngx_http_lua_write_request_body (TYPE_4__*,TYPE_6__*) ;
 int ngx_memcpy (size_t,int *,size_t) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_append_body(lua_State *L)
{
    ngx_http_request_t *r;
    int n;
    ngx_http_request_body_t *rb;
    ngx_str_t body;
    size_t size, rest;
    size_t offset = 0;
    ngx_chain_t chain;
    ngx_buf_t buf;

    n = lua_gettop(L);

    if (n != 1) {
        return luaL_error(L, "expecting 1 arguments but seen %d", n);
    }

    body.data = (u_char *) luaL_checklstring(L, 1, &body.len);

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ngx_http_lua_check_fake_request(L, r);

    if (r->request_body == ((void*)0)
        || r->request_body->buf == ((void*)0)
        || r->request_body->bufs == ((void*)0))
    {
        return luaL_error(L, "request_body not initialized");
    }

    if (r->request_body_in_file_only) {
        buf.start = body.data;
        buf.pos = buf.start;
        buf.last = buf.start + body.len;
        buf.end = buf.last;
        buf.temporary = 1;

        chain.buf = &buf;
        chain.next = ((void*)0);

        if (ngx_http_lua_write_request_body(r, &chain) != NGX_OK) {
            return luaL_error(L, "fail to write file");
        }

        r->headers_in.content_length_n += body.len;
        return 0;
    }

    rb = r->request_body;

    rest = body.len;

    while (rest > 0) {
        if (rb->buf->last == rb->buf->end) {
            if (ngx_http_lua_write_request_body(r, rb->bufs) != NGX_OK) {
                return luaL_error(L, "fail to write file");
            }

            rb->buf->last = rb->buf->start;
        }

        size = rb->buf->end - rb->buf->last;

        if (size > rest) {
            size = rest;
        }

        ngx_memcpy(rb->buf->last, body.data + offset, size);

        rb->buf->last += size;
        rest -= size;
        offset += size;
        r->headers_in.content_length_n += size;
    }

    return 0;
}
