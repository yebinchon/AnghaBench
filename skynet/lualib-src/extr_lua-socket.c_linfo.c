
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {struct socket_info* next; } ;
typedef int lua_State ;


 int getinfo (int *,struct socket_info*) ;
 int lua_newtable (int *) ;
 int lua_seti (int *,int,int) ;
 struct socket_info* skynet_socket_info () ;
 int socket_info_release (struct socket_info*) ;

__attribute__((used)) static int
linfo(lua_State *L) {
 lua_newtable(L);
 struct socket_info * si = skynet_socket_info();
 struct socket_info * temp = si;
 int n = 0;
 while (temp) {
  getinfo(L, temp);
  lua_seti(L, -2, ++n);
  temp = temp->next;
 }
 socket_info_release(si);
 return 1;
}
