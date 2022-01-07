
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int lua_State ;
typedef int hostname ;


 scalar_t__ gethostname (char*,int) ;
 scalar_t__ getpid () ;
 int lua_pushfstring (int *,char*,...) ;

__attribute__((used)) static int
lnodename(lua_State *L) {
 pid_t pid = getpid();
 char hostname[256];
 if (gethostname(hostname, sizeof(hostname))==0) {
  lua_pushfstring(L, "%s%d", hostname, (int)pid);
 } else {
  lua_pushfstring(L, "noname%d", (int)pid);
 }
 return 1;
}
