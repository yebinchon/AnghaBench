
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_15__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_16__ {size_t len; } ;
struct TYPE_14__ {int buff; } ;
typedef int StkId ;


 TYPE_12__* G (TYPE_1__*) ;
 int MAX_SIZET ;
 int TM_CONCAT ;
 int call_binTM (TYPE_1__*,int,int,int,int ) ;
 int luaG_concaterror (TYPE_1__*,int,int) ;
 int luaG_runerror (TYPE_1__*,char*) ;
 int luaS_newlstr (TYPE_1__*,char*,size_t) ;
 char* luaZ_openspace (TYPE_1__*,int *,size_t) ;
 int lua_assert (int) ;
 int memcpy (char*,int ,size_t) ;
 int setobjs2s (TYPE_1__*,int,int) ;
 int setsvalue2s (TYPE_1__*,int,int ) ;
 int svalue (int) ;
 scalar_t__ tostring (TYPE_1__*,int) ;
 TYPE_2__* tsvalue (int) ;
 scalar_t__ ttisnumber (int) ;
 scalar_t__ ttisstring (int) ;

void luaV_concat (lua_State *L, int total) {
  lua_assert(total >= 2);
  do {
    StkId top = L->top;
    int n = 2;
    if (!(ttisstring(top-2) || ttisnumber(top-2)) || !tostring(L, top-1)) {
      if (!call_binTM(L, top-2, top-1, top-2, TM_CONCAT))
        luaG_concaterror(L, top-2, top-1);
    }
    else if (tsvalue(top-1)->len == 0)
      (void)tostring(L, top - 2);
    else if (ttisstring(top-2) && tsvalue(top-2)->len == 0) {
      setobjs2s(L, top - 2, top - 1);
    }
    else {

      size_t tl = tsvalue(top-1)->len;
      char *buffer;
      int i;

      for (i = 1; i < total && tostring(L, top-i-1); i++) {
        size_t l = tsvalue(top-i-1)->len;
        if (l >= (MAX_SIZET/sizeof(char)) - tl)
          luaG_runerror(L, "string length overflow");
        tl += l;
      }
      buffer = luaZ_openspace(L, &G(L)->buff, tl);
      tl = 0;
      n = i;
      do {
        size_t l = tsvalue(top-i)->len;
        memcpy(buffer+tl, svalue(top-i), l * sizeof(char));
        tl += l;
      } while (--i > 0);
      setsvalue2s(L, top-n, luaS_newlstr(L, buffer, tl));
    }
    total -= n-1;
    L->top -= n-1;
  } while (total > 1);
}
