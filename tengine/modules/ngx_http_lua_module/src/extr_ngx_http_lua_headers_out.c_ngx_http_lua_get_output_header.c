
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_22__ {int len; scalar_t__ data; } ;
struct TYPE_21__ {scalar_t__ len; int * data; } ;
struct TYPE_23__ {scalar_t__ hash; TYPE_7__ value; TYPE_6__ key; } ;
typedef TYPE_8__ ngx_table_elt_t ;
struct TYPE_24__ {scalar_t__ len; int data; } ;
typedef TYPE_9__ ngx_str_t ;
struct TYPE_14__ {size_t nelts; TYPE_8__* elts; struct TYPE_14__* next; } ;
typedef TYPE_10__ ngx_list_part_t ;
struct TYPE_19__ {TYPE_10__ part; } ;
struct TYPE_16__ {int len; scalar_t__ data; } ;
struct TYPE_20__ {TYPE_4__ headers; TYPE_3__* location; TYPE_1__ content_type; int content_length_n; int * content_length; } ;
struct TYPE_15__ {TYPE_5__ headers_out; } ;
typedef TYPE_11__ ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int lua_State ;
typedef int lua_Integer ;
struct TYPE_17__ {char* data; scalar_t__ len; } ;
struct TYPE_18__ {int key; int hash; TYPE_2__ value; } ;


 int dd (char*,...) ;
 int lua_createtable (int *,int,int ) ;
 int lua_insert (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int lua_rawseti (int *,int,unsigned int) ;
 int ngx_http_lua_location_hash ;
 int ngx_str_set (int *,char*) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;

int
ngx_http_lua_get_output_header(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx, ngx_str_t *key)
{
    ngx_table_elt_t *h;
    ngx_list_part_t *part;
    ngx_uint_t i;
    unsigned found;

    dd("looking for response header \"%.*s\"", (int) key->len, key->data);

    switch (key->len) {
    case 14:
        if (r->headers_out.content_length == ((void*)0)
            && r->headers_out.content_length_n >= 0
            && ngx_strncasecmp(key->data, (u_char *) "Content-Length", 14) == 0)
        {
            lua_pushinteger(L, (lua_Integer) r->headers_out.content_length_n);
            return 1;
        }

        break;

    case 12:
        if (ngx_strncasecmp(key->data, (u_char *) "Content-Type", 12) == 0
            && r->headers_out.content_type.len)
        {
            lua_pushlstring(L, (char *) r->headers_out.content_type.data,
                            r->headers_out.content_type.len);
            return 1;
        }

        break;

    default:
        break;
    }

    dd("not a built-in output header");

    found = 0;


    if (r->headers_out.location
        && r->headers_out.location->value.len
        && r->headers_out.location->value.data[0] == '/')
    {





        r->headers_out.location->hash = ngx_http_lua_location_hash;
        ngx_str_set(&r->headers_out.location->key, "Location");
    }


    part = &r->headers_out.headers.part;
    h = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }

            part = part->next;
            h = part->elts;
            i = 0;
        }

        if (h[i].hash == 0) {
            continue;
        }

        if (h[i].hash != 0
            && h[i].key.len == key->len
            && ngx_strncasecmp(key->data, h[i].key.data, h[i].key.len) == 0)
         {
             if (!found) {
                 found = 1;

                 lua_pushlstring(L, (char *) h[i].value.data, h[i].value.len);
                 continue;
             }

             if (found == 1) {
                 lua_createtable(L, 4 , 0);
                 lua_insert(L, -2);
                 lua_rawseti(L, -2, found);
             }

             found++;

             lua_pushlstring(L, (char *) h[i].value.data, h[i].value.len);
             lua_rawseti(L, -2, found);
         }
    }

    if (found) {
        return 1;
    }

    lua_pushnil(L);
    return 1;
}
