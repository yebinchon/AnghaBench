
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int send_message (int *,int ,int) ;

__attribute__((used)) static int
lsend(lua_State *L) {
 return send_message(L, 0, 2);
}
