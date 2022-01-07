
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_http_request_t ;


 int SOCKET_OP_READ ;
 int ngx_http_lua_socket_tcp_resume_helper (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_tcp_read_resume(ngx_http_request_t *r)
{
    return ngx_http_lua_socket_tcp_resume_helper(r, SOCKET_OP_READ);
}
