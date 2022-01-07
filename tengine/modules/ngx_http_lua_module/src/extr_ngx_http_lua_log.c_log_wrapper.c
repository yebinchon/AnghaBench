
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u_char ;
typedef int off_t ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_8__ {char* data; int len; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_9__ {scalar_t__ log_level; } ;
typedef TYPE_2__ ngx_log_t ;
typedef int lua_State ;
struct TYPE_10__ {char* namewhat; char* what; char* name; scalar_t__ linedefined; scalar_t__ currentline; scalar_t__ short_src; } ;
typedef TYPE_3__ lua_Debug ;
 int NGX_INT_T_LEN ;
 int luaL_argerror (int *,int,char const*) ;
 int luaL_callmeta (int *,int,char*) ;
 int luaL_error (int *,char*,...) ;
 int lua_getinfo (int *,char*,TYPE_3__*) ;
 int lua_getstack (int *,int,TYPE_3__*) ;
 int lua_gettop (int *) ;
 char* lua_newuserdata (int *,size_t) ;
 char* lua_pushfstring (int *,char*,int ) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int * lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 char* ngx_copy (char*,char*,size_t) ;
 int ngx_log_error (scalar_t__,TYPE_2__*,int ,char*,char const*,size_t,char*) ;
 char* ngx_snprintf (char*,int,char*,scalar_t__) ;
 size_t ngx_strlen (char*) ;

__attribute__((used)) static int
log_wrapper(ngx_log_t *log, const char *ident, ngx_uint_t level,
    lua_State *L)
{
    u_char *buf;
    u_char *p, *q;
    ngx_str_t name;
    int nargs, i;
    size_t size, len;
    size_t src_len = 0;
    int type;
    const char *msg;
    lua_Debug ar;

    if (level > log->log_level) {
        return 0;
    }




    lua_getstack(L, 1, &ar);
    lua_getinfo(L, "Snl", &ar);


    name.data = (u_char *) ar.short_src;
    if (name.data == ((void*)0)) {
        name.len = 0;

    } else {
        p = name.data;
        while (*p != '\0') {
            if (*p == '/' || *p == '\\') {
                name.data = p + 1;
            }
            p++;
        }

        name.len = p - name.data;
    }



    nargs = lua_gettop(L);

    size = name.len + NGX_INT_T_LEN + sizeof(":: ") - 1;

    if (*ar.namewhat != '\0' && *ar.what == 'L') {
        src_len = ngx_strlen(ar.name);
        size += src_len + sizeof("(): ") - 1;
    }

    for (i = 1; i <= nargs; i++) {
        type = lua_type(L, i);
        switch (type) {
            case 130:
            case 129:
                lua_tolstring(L, i, &len);
                size += len;
                break;

            case 131:
                size += sizeof("nil") - 1;
                break;

            case 133:
                if (lua_toboolean(L, i)) {
                    size += sizeof("true") - 1;

                } else {
                    size += sizeof("false") - 1;
                }

                break;

            case 128:
                if (!luaL_callmeta(L, i, "__tostring")) {
                    return luaL_argerror(L, i, "expected table to have "
                                         "__tostring metamethod");
                }

                lua_tolstring(L, -1, &len);
                size += len;
                break;

            case 132:
                if (lua_touserdata(L, i) == ((void*)0)) {
                    size += sizeof("null") - 1;
                    break;
                }

                continue;

            default:
                msg = lua_pushfstring(L, "string, number, boolean, or nil "
                                      "expected, got %s",
                                      lua_typename(L, type));
                return luaL_argerror(L, i, msg);
        }
    }

    buf = lua_newuserdata(L, size);

    p = ngx_copy(buf, name.data, name.len);

    *p++ = ':';

    p = ngx_snprintf(p, NGX_INT_T_LEN, "%d",
                     ar.currentline ? ar.currentline : ar.linedefined);

    *p++ = ':'; *p++ = ' ';

    if (*ar.namewhat != '\0' && *ar.what == 'L') {
        p = ngx_copy(p, ar.name, src_len);
        *p++ = '(';
        *p++ = ')';
        *p++ = ':';
        *p++ = ' ';
    }

    for (i = 1; i <= nargs; i++) {
        type = lua_type(L, i);
        switch (type) {
            case 130:
            case 129:
                q = (u_char *) lua_tolstring(L, i, &len);
                p = ngx_copy(p, q, len);
                break;

            case 131:
                *p++ = 'n';
                *p++ = 'i';
                *p++ = 'l';
                break;

            case 133:
                if (lua_toboolean(L, i)) {
                    *p++ = 't';
                    *p++ = 'r';
                    *p++ = 'u';
                    *p++ = 'e';

                } else {
                    *p++ = 'f';
                    *p++ = 'a';
                    *p++ = 'l';
                    *p++ = 's';
                    *p++ = 'e';
                }

                break;

            case 128:
                luaL_callmeta(L, i, "__tostring");
                q = (u_char *) lua_tolstring(L, -1, &len);
                p = ngx_copy(p, q, len);
                break;

            case 132:
                *p++ = 'n';
                *p++ = 'u';
                *p++ = 'l';
                *p++ = 'l';

                break;

            default:
                return luaL_error(L, "impossible to reach here");
        }
    }

    if (p - buf > (off_t) size) {
        return luaL_error(L, "buffer error: %d > %d", (int) (p - buf),
                          (int) size);
    }

    ngx_log_error(level, log, 0, "%s%*s", ident, (size_t) (p - buf), buf);

    return 0;
}
