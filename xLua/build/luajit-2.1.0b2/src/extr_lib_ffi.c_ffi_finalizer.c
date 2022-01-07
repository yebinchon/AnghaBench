
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_14__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_15__ {scalar_t__ nomm; int metatable; } ;
typedef TYPE_2__ GCtab ;


 unsigned int MM_mode ;
 int lj_str_newlit (TYPE_1__*,char*) ;
 TYPE_2__* lj_tab_new (TYPE_1__*,int ,int) ;
 int lj_tab_setstr (TYPE_1__*,TYPE_2__*,int ) ;
 int obj2gco (TYPE_2__*) ;
 int setgcref (int ,int ) ;
 int setstrV (TYPE_1__*,int ,int ) ;
 int settabV (TYPE_1__*,int ,TYPE_2__*) ;

__attribute__((used)) static GCtab *ffi_finalizer(lua_State *L)
{

  GCtab *t = lj_tab_new(L, 0, 1);
  settabV(L, L->top++, t);
  setgcref(t->metatable, obj2gco(t));
  setstrV(L, lj_tab_setstr(L, t, lj_str_newlit(L, "__mode")),
   lj_str_newlit(L, "K"));
  t->nomm = (uint8_t)(~(1u<<MM_mode));
  return t;
}
