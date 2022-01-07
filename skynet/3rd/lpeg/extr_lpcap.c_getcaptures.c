
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char const* s; int ptop; int * cap; scalar_t__ valuecached; int * L; int * ocap; } ;
typedef int Capture ;
typedef TYPE_1__ CapState ;


 int caplistidx (int) ;
 int isclosecap (int *) ;
 int lua_pushinteger (int *,int) ;
 scalar_t__ lua_touserdata (int *,int ) ;
 scalar_t__ pushcapture (TYPE_1__*) ;

int getcaptures (lua_State *L, const char *s, const char *r, int ptop) {
  Capture *capture = (Capture *)lua_touserdata(L, caplistidx(ptop));
  int n = 0;
  if (!isclosecap(capture)) {
    CapState cs;
    cs.ocap = cs.cap = capture; cs.L = L;
    cs.s = s; cs.valuecached = 0; cs.ptop = ptop;
    do {
      n += pushcapture(&cs);
    } while (!isclosecap(cs.cap));
  }
  if (n == 0) {
    lua_pushinteger(L, r - s + 1);
    n = 1;
  }
  return n;
}
