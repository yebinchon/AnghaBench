
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_9__ {scalar_t__ base; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_10__ {int * gcroot; } ;


 TYPE_7__* G (TYPE_1__*) ;
 int IOSTDF_UD (TYPE_1__*,size_t) ;
 int gcV (scalar_t__) ;
 int io_file_open (TYPE_1__*,char const*) ;
 int io_tofile (TYPE_1__*) ;
 int setgcref (int ,int ) ;
 int setudataV (TYPE_1__*,int ,int ) ;
 int tvisnil (scalar_t__) ;
 scalar_t__ tvisudata (scalar_t__) ;

__attribute__((used)) static int io_std_getset(lua_State *L, ptrdiff_t id, const char *mode)
{
  if (L->base < L->top && !tvisnil(L->base)) {
    if (tvisudata(L->base)) {
      io_tofile(L);
      L->top = L->base+1;
    } else {
      io_file_open(L, mode);
    }

    setgcref(G(L)->gcroot[id], gcV(L->top-1));
  } else {
    setudataV(L, L->top++, IOSTDF_UD(L, id));
  }
  return 1;
}
