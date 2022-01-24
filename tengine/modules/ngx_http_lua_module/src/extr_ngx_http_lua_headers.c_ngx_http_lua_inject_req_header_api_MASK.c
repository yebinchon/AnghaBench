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
 int /*<<< orphan*/  ngx_http_lua_ngx_req_get_headers ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_header_clear ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_header_set ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_http_version ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_raw_header ; 

void
FUNC2(lua_State *L)
{
    FUNC0(L, ngx_http_lua_ngx_req_http_version);
    FUNC1(L, -2, "http_version");

    FUNC0(L, ngx_http_lua_ngx_req_raw_header);
    FUNC1(L, -2, "raw_header");

    FUNC0(L, ngx_http_lua_ngx_req_header_clear);
    FUNC1(L, -2, "clear_header");

    FUNC0(L, ngx_http_lua_ngx_req_header_set);
    FUNC1(L, -2, "set_header");

    FUNC0(L, ngx_http_lua_ngx_req_get_headers);
    FUNC1(L, -2, "get_headers");
}