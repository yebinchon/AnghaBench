
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {TYPE_5__* request_body; } ;
typedef TYPE_6__ ngx_http_request_t ;
typedef int lua_State ;
struct TYPE_16__ {scalar_t__ pos; scalar_t__ end; int temporary; int memory; int in_file; } ;
struct TYPE_14__ {TYPE_4__* temp_file; TYPE_1__* bufs; } ;
struct TYPE_11__ {int len; scalar_t__ data; } ;
struct TYPE_12__ {TYPE_2__ name; int directio; } ;
struct TYPE_13__ {TYPE_3__ file; } ;
struct TYPE_10__ {TYPE_9__* buf; } ;


 int dd (char*,int ,int ,int ,int ,int,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_pushlstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 scalar_t__ ngx_buf_size (TYPE_9__*) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_6__*) ;
 TYPE_6__* ngx_http_lua_get_req (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_get_body_file(lua_State *L)
{
    ngx_http_request_t *r;
    int n;

    n = lua_gettop(L);

    if (n != 0) {
        return luaL_error(L, "expecting 0 arguments but seen %d", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "request object not found");
    }

    ngx_http_lua_check_fake_request(L, r);

    if (r->request_body == ((void*)0) || r->request_body->temp_file == ((void*)0)) {
        lua_pushnil(L);
        return 1;
    }

    dd("XXX file directio: %u, f:%u, m:%u, t:%u, end - pos %d, size %d",
       r->request_body->temp_file->file.directio,
       r->request_body->bufs->buf->in_file,
       r->request_body->bufs->buf->memory,
       r->request_body->bufs->buf->temporary,
       (int) (r->request_body->bufs->buf->end -
              r->request_body->bufs->buf->pos),
       (int) ngx_buf_size(r->request_body->bufs->buf));

    lua_pushlstring(L, (char *) r->request_body->temp_file->file.name.data,
                    r->request_body->temp_file->file.name.len);
    return 1;
}
