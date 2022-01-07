
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
struct TYPE_17__ {int (* panic ) (TYPE_1__*) ;} ;
typedef int TValue ;


 int EXIT_FAILURE ;
 TYPE_9__* G (TYPE_1__*) ;
 int KEY_PROFILE_FUNC ;
 int exit (int ) ;
 int funcV (int *) ;
 int lj_str_new (TYPE_1__*,char*,int) ;
 int * lj_tab_get (TYPE_1__*,int ,int *) ;
 int lj_trace_abort (TYPE_9__*) ;
 int lua_pcall (TYPE_1__*,int,int ,int ) ;
 int registry (TYPE_1__*) ;
 int setfuncV (TYPE_1__*,int ,int ) ;
 int setintV (int ,int) ;
 int setlightudV (int *,void*) ;
 int setstrV (TYPE_1__*,int ,int ) ;
 int setthreadV (TYPE_1__*,int ,TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 int tabV (int ) ;
 scalar_t__ tvisfunc (int *) ;

__attribute__((used)) static void jit_profile_callback(lua_State *L2, lua_State *L, int samples,
     int vmstate)
{
  TValue key;
  cTValue *tv;
  setlightudV(&key, (void *)&KEY_PROFILE_FUNC);
  tv = lj_tab_get(L, tabV(registry(L)), &key);
  if (tvisfunc(tv)) {
    char vmst = (char)vmstate;
    int status;
    setfuncV(L2, L2->top++, funcV(tv));
    setthreadV(L2, L2->top++, L);
    setintV(L2->top++, samples);
    setstrV(L2, L2->top++, lj_str_new(L2, &vmst, 1));
    status = lua_pcall(L2, 3, 0, 0);
    if (status) {
      if (G(L2)->panic) G(L2)->panic(L2);
      exit(EXIT_FAILURE);
    }
    lj_trace_abort(G(L2));
  }
}
