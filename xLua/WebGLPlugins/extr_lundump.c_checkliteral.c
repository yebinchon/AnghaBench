
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LoadState ;
typedef int LUA_SIGNATURE ;
typedef int LUAC_DATA ;


 int LoadVector (int *,char*,size_t) ;
 int error (int *,char const*) ;
 scalar_t__ memcmp (char const*,char*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void checkliteral (LoadState *S, const char *s, const char *msg) {
  char buff[sizeof(LUA_SIGNATURE) + sizeof(LUAC_DATA)];
  size_t len = strlen(s);
  LoadVector(S, buff, len);
  if (memcmp(s, buff, len) != 0)
    error(S, msg);
}
