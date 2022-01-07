
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct in_addr {int s_addr; } ;
typedef int p_socket ;
typedef int lua_State ;


 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IP_MULTICAST_IF ;
 int htonl (int ) ;
 int inet_aton (char const*,struct in_addr*) ;
 int luaL_argerror (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int opt_set (int *,int ,int ,int ,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

int opt_set_ip_multicast_if(lua_State *L, p_socket ps)
{
    const char *address = luaL_checkstring(L, 3);
    struct in_addr val;
    val.s_addr = htonl(INADDR_ANY);
    if (strcmp(address, "*") && !inet_aton(address, &val))
        luaL_argerror(L, 3, "ip expected");
    return opt_set(L, ps, IPPROTO_IP, IP_MULTICAST_IF,
        (char *) &val, sizeof(val));
}
