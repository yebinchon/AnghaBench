
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int lua_State ;
typedef int buf ;


 int NGX_LOG_ERR ;
 int luaL_loadbuffer (int *,char const*,int,char*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pcall (int *,int ,int ,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setglobal (int *,char*) ;
 int lua_tostring (int *,int) ;
 int ngx_http_lua_coroutine_create ;
 int ngx_http_lua_coroutine_resume ;
 int ngx_http_lua_coroutine_status ;
 int ngx_http_lua_coroutine_yield ;
 int ngx_log_error (int ,int *,int ,char*,int,int ) ;

void
ngx_http_lua_inject_coroutine_api(ngx_log_t *log, lua_State *L)
{
    int rc;


    lua_createtable(L, 0 , 14 );


    lua_getglobal(L, "coroutine");


    lua_getfield(L, -1, "running");
    lua_setfield(L, -3, "running");

    lua_getfield(L, -1, "create");
    lua_setfield(L, -3, "_create");

    lua_getfield(L, -1, "resume");
    lua_setfield(L, -3, "_resume");

    lua_getfield(L, -1, "yield");
    lua_setfield(L, -3, "_yield");

    lua_getfield(L, -1, "status");
    lua_setfield(L, -3, "_status");


    lua_pop(L, 1);

    lua_pushcfunction(L, ngx_http_lua_coroutine_create);
    lua_setfield(L, -2, "__create");

    lua_pushcfunction(L, ngx_http_lua_coroutine_resume);
    lua_setfield(L, -2, "__resume");

    lua_pushcfunction(L, ngx_http_lua_coroutine_yield);
    lua_setfield(L, -2, "__yield");

    lua_pushcfunction(L, ngx_http_lua_coroutine_status);
    lua_setfield(L, -2, "__status");

    lua_setglobal(L, "coroutine");


    {
        const char buf[] =
            "local keys = {'create', 'yield', 'resume', 'status'}\n"



            "local getfenv = getfenv\n"

            "for _, key in ipairs(keys) do\n"
               "local std = coroutine['_' .. key]\n"
               "local ours = coroutine['__' .. key]\n"
               "local raw_ctx = ngx._phase_ctx\n"
               "coroutine[key] = function (...)\n"



                    "local r = getfenv(0).__ngx_req\n"

                    "if r ~= nil then\n"



                        "local ctx = raw_ctx(r)\n"


                        "if ctx ~= 0x020 and ctx ~= 0x040 then\n"
                            "return ours(...)\n"
                        "end\n"
                    "end\n"
                    "return std(...)\n"
                "end\n"
            "end\n"
            "local create, resume = coroutine.create, coroutine.resume\n"
            "coroutine.wrap = function(f)\n"
               "local co = create(f)\n"
               "return function(...) return select(2, resume(co, ...)) end\n"
            "end\n"
            "package.loaded.coroutine = coroutine";




            ;

        rc = luaL_loadbuffer(L, buf, sizeof(buf) - 1, "=coroutine.wrap");
    }

    if (rc != 0) {
        ngx_log_error(NGX_LOG_ERR, log, 0,
                      "failed to load Lua code for coroutine.wrap(): %i: %s",
                      rc, lua_tostring(L, -1));

        lua_pop(L, 1);
        return;
    }

    rc = lua_pcall(L, 0, 0, 0);
    if (rc != 0) {
        ngx_log_error(NGX_LOG_ERR, log, 0,
                      "failed to run the Lua code for coroutine.wrap(): %i: %s",
                      rc, lua_tostring(L, -1));
        lua_pop(L, 1);
    }
}
