
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_4__ {int* param; } ;
typedef TYPE_1__ jit_State ;
typedef int int32_t ;


 int J2G (TYPE_1__*) ;
 char* JIT_P_STRING ;
 int JIT_P__MAX ;
 int JIT_P_hotloop ;
 int lj_dispatch_init_hotcount (int ) ;
 int lua_assert (int) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int jitopt_param(jit_State *J, const char *str)
{
  const char *lst = JIT_P_STRING;
  int i;
  for (i = 0; i < JIT_P__MAX; i++) {
    size_t len = *(const uint8_t *)lst;
    lua_assert(len != 0);
    if (strncmp(str, lst+1, len) == 0 && str[len] == '=') {
      int32_t n = 0;
      const char *p = &str[len+1];
      while (*p >= '0' && *p <= '9')
 n = n*10 + (*p++ - '0');
      if (*p) return 0;
      J->param[i] = n;
      if (i == JIT_P_hotloop)
 lj_dispatch_init_hotcount(J2G(J));
      return 1;
    }
    lst += 1+len;
  }
  return 0;
}
