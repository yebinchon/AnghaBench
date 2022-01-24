#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_append_body ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_body_finish ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_discard_body ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_get_body_data ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_get_body_file ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_init_body ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_read_body ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_set_body_data ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_set_body_file ; 

void
FUNC2(lua_State *L)
{
    FUNC0(L, ngx_http_lua_ngx_req_read_body);
    FUNC1(L, -2, "read_body");

    FUNC0(L, ngx_http_lua_ngx_req_discard_body);
    FUNC1(L, -2, "discard_body");

    FUNC0(L, ngx_http_lua_ngx_req_get_body_data);
    FUNC1(L, -2, "get_body_data");

    FUNC0(L, ngx_http_lua_ngx_req_get_body_file);
    FUNC1(L, -2, "get_body_file");

    FUNC0(L, ngx_http_lua_ngx_req_set_body_data);
    FUNC1(L, -2, "set_body_data");

    FUNC0(L, ngx_http_lua_ngx_req_set_body_file);
    FUNC1(L, -2, "set_body_file");

    FUNC0(L, ngx_http_lua_ngx_req_init_body);
    FUNC1(L, -2, "init_body");

    FUNC0(L, ngx_http_lua_ngx_req_append_body);
    FUNC1(L, -2, "append_body");

    FUNC0(L, ngx_http_lua_ngx_req_body_finish);
    FUNC1(L, -2, "finish_body");
}