
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {int ptr; } ;
struct TYPE_6__ {int ptr; } ;
struct TYPE_8__ {int extraline; scalar_t__ file_type; int * f; scalar_t__ sent_end; scalar_t__ sent_begin; int end_code_len; TYPE_2__ end_code; int begin_code_len; TYPE_1__ begin_code; } ;
typedef TYPE_3__ ngx_http_lua_clfactory_file_ctx_t ;
typedef int ngx_flag_t ;
typedef int lua_State ;


 int CLFACTORY_BEGIN_CODE ;
 int CLFACTORY_BEGIN_SIZE ;
 int CLFACTORY_END_CODE ;
 int CLFACTORY_END_SIZE ;
 int EOF ;
 int LUA_ERRFILE ;
 int LUA_REGISTRYINDEX ;
 int* LUA_SIGNATURE ;
 scalar_t__ NGX_LUA_BT_LJ ;
 scalar_t__ NGX_LUA_BT_LUA ;
 scalar_t__ NGX_LUA_TEXT_FILE ;
 int fclose (int *) ;
 int ferror (int *) ;
 int * fopen (char const*,char*) ;
 int * freopen (char const*,char*,int *) ;
 int getc (int *) ;
 int luaL_findtable (int *,int ,char*,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_load (int *,int ,TYPE_3__*,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushfstring (int *,char*,char const*) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 int ngx_http_lua_clfactory_bytecode_prepare (int *,TYPE_3__*,int) ;
 int ngx_http_lua_clfactory_errfile (int *,char*,int) ;
 int ngx_http_lua_clfactory_getF ;
 int ungetc (int,int *) ;

ngx_int_t
ngx_http_lua_clfactory_loadfile(lua_State *L, const char *filename)
{
    int c, status, readstatus;
    ngx_flag_t sharp;

    ngx_http_lua_clfactory_file_ctx_t lf;


    int fname_index;

    sharp = 0;
    fname_index = lua_gettop(L) + 1;

    lf.extraline = 0;
    lf.file_type = NGX_LUA_TEXT_FILE;


    lf.begin_code.ptr = CLFACTORY_BEGIN_CODE;
    lf.begin_code_len = CLFACTORY_BEGIN_SIZE;
    lf.end_code.ptr = CLFACTORY_END_CODE;
    lf.end_code_len = CLFACTORY_END_SIZE;


    lua_pushfstring(L, "@%s", filename);

    lf.f = fopen(filename, "r");
    if (lf.f == ((void*)0)) {
        return ngx_http_lua_clfactory_errfile(L, "open", fname_index);
    }

    c = getc(lf.f);

    if (c == '#') {
        lf.extraline = 1;

        while ((c = getc(lf.f)) != EOF && c != '\n') {

        }

        if (c == '\n') {
            c = getc(lf.f);
        }

        sharp = 1;
    }

    if (c == LUA_SIGNATURE[0] && filename) {
        lf.f = freopen(filename, "rb", lf.f);

        if (lf.f == ((void*)0)) {
            return ngx_http_lua_clfactory_errfile(L, "reopen", fname_index);
        }


        luaL_findtable(L, LUA_REGISTRYINDEX, "_LOADED", 1);
        lua_getfield(L, -1, "jit");

        if (lua_istable(L, -1)) {
            lf.file_type = NGX_LUA_BT_LJ;

        } else {
            lf.file_type = NGX_LUA_BT_LUA;
        }

        lua_pop(L, 2);







        if (lf.file_type == NGX_LUA_BT_LJ && sharp) {

            if (filename) {
                fclose(lf.f);
            }

            filename = lua_tostring(L, fname_index) + 1;
            lua_pushfstring(L, "bad byte-code header in %s", filename);
            lua_remove(L, fname_index);

            return LUA_ERRFILE;
        }

        while ((c = getc(lf.f)) != EOF && c != LUA_SIGNATURE[0]) {

        }


        status = ngx_http_lua_clfactory_bytecode_prepare(L, &lf, fname_index);

        if (status != 0) {
            return status;
        }


        lf.extraline = 0;
    }


    if (lf.file_type == NGX_LUA_TEXT_FILE) {
        ungetc(c, lf.f);
    }

    lf.sent_begin = lf.sent_end = 0;




    status = lua_load(L, ngx_http_lua_clfactory_getF, &lf,
                      lua_tostring(L, -1));

    readstatus = ferror(lf.f);

    if (filename) {
        fclose(lf.f);
    }

    if (readstatus) {
        lua_settop(L, fname_index);
        return ngx_http_lua_clfactory_errfile(L, "read", fname_index);
    }

    lua_remove(L, fname_index);

    return status;
}
