
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {int data; scalar_t__ len; } ;
struct TYPE_16__ {scalar_t__ fd; TYPE_1__ name; } ;
struct TYPE_18__ {TYPE_2__ file; } ;
typedef TYPE_4__ ngx_temp_file_t ;
struct TYPE_17__ {scalar_t__ content_length_n; } ;
struct TYPE_19__ {int request_body_in_file_only; int request_body_in_clean_file; int pool; TYPE_3__ headers_in; TYPE_6__* request_body; scalar_t__ discard_body; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_20__ {TYPE_13__* bufs; int * buf; TYPE_4__* temp_file; } ;
typedef TYPE_6__ ngx_http_request_body_t ;
struct TYPE_21__ {size_t client_body_buffer_size; } ;
typedef TYPE_7__ ngx_http_core_loc_conf_t ;
typedef int lua_State ;
typedef scalar_t__ lua_Integer ;
struct TYPE_14__ {int * next; int * buf; } ;


 scalar_t__ NGX_INVALID_FILE ;
 int dd (char*,int,int ) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 TYPE_13__* ngx_alloc_chain_link (int ) ;
 int * ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_core_module ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_5__*) ;
 TYPE_5__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_pool_cleanup_file (int ,scalar_t__) ;
 int ngx_memzero (TYPE_4__*,int) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_init_body(lua_State *L)
{
    ngx_http_request_t *r;
    int n;
    ngx_http_request_body_t *rb;
    size_t size;
    lua_Integer num;

    ngx_temp_file_t *tf;

    ngx_http_core_loc_conf_t *clcf;

    n = lua_gettop(L);

    if (n != 1 && n != 0) {
        return luaL_error(L, "expecting 0 or 1 argument but seen %d", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ngx_http_lua_check_fake_request(L, r);

    if (r->discard_body) {
        return luaL_error(L, "request body already discarded asynchronously");
    }

    if (r->request_body == ((void*)0)) {
        return luaL_error(L, "request body not read yet");
    }

    if (n == 1) {
        num = luaL_checkinteger(L, 1);
        if (num < 0) {
            return luaL_error(L, "bad size argument: %d", (int) num);
        }

        size = (size_t) num;

    } else {

        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
        size = clcf->client_body_buffer_size;
    }

    if (size == 0) {
        r->request_body_in_file_only = 1;
    }

    rb = r->request_body;


    tf = rb->temp_file;

    if (tf) {
        if (tf->file.fd != NGX_INVALID_FILE) {

            dd("cleaning temp file %.*s", (int) tf->file.name.len,
               tf->file.name.data);

            ngx_http_lua_pool_cleanup_file(r->pool, tf->file.fd);

            ngx_memzero(tf, sizeof(ngx_temp_file_t));

            tf->file.fd = NGX_INVALID_FILE;

            dd("temp file cleaned: %.*s", (int) tf->file.name.len,
               tf->file.name.data);
        }

        rb->temp_file = ((void*)0);
    }


    r->request_body_in_clean_file = 1;

    r->headers_in.content_length_n = 0;

    rb->buf = ngx_create_temp_buf(r->pool, size);
    if (rb->buf == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    rb->bufs = ngx_alloc_chain_link(r->pool);
    if (rb->bufs == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    rb->bufs->buf = rb->buf;
    rb->bufs->next = ((void*)0);

    return 0;
}
