
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int luaL_Buffer ;
struct TYPE_8__ {char* s; int siz; } ;
struct TYPE_7__ {TYPE_3__* cap; } ;
typedef TYPE_1__ CapState ;


 scalar_t__ addonestring (int *,TYPE_1__*,char*) ;
 char* closeaddr (TYPE_3__*) ;
 int isclosecap (TYPE_3__*) ;
 scalar_t__ isfullcap (TYPE_3__*) ;
 int luaL_addlstring (int *,char const*,int) ;

__attribute__((used)) static void substcap (luaL_Buffer *b, CapState *cs) {
  const char *curr = cs->cap->s;
  if (isfullcap(cs->cap))
    luaL_addlstring(b, curr, cs->cap->siz - 1);
  else {
    cs->cap++;
    while (!isclosecap(cs->cap)) {
      const char *next = cs->cap->s;
      luaL_addlstring(b, curr, next - curr);
      if (addonestring(b, cs, "replacement"))
        curr = closeaddr(cs->cap - 1);
      else
        curr = next;
    }
    luaL_addlstring(b, curr, cs->cap->s - curr);
  }
  cs->cap++;
}
