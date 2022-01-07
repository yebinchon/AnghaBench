
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct in_addr {int dummy; } ;
typedef int socklen_t ;
typedef int * p_socket ;
typedef int lua_State ;


 int IPPROTO_IP ;
 int IP_MULTICAST_IF ;
 scalar_t__ getsockopt (int ,int ,int ,char*,int*) ;
 char* inet_ntoa (struct in_addr) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;

int opt_get_ip_multicast_if(lua_State *L, p_socket ps)
{
    struct in_addr val;
    socklen_t len = sizeof(val);
    if (getsockopt(*ps, IPPROTO_IP, IP_MULTICAST_IF, (char *) &val, &len) < 0) {
        lua_pushnil(L);
        lua_pushstring(L, "getsockopt failed");
        return 2;
    }
    lua_pushstring(L, inet_ntoa(val));
    return 1;
}
