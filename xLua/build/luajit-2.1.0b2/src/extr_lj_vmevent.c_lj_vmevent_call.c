
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_11__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_12__ {scalar_t__ vmevmask; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (TYPE_1__*) ;
 scalar_t__ LJ_UNLIKELY (int) ;
 scalar_t__ VMEVENT_NOCACHE ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int hook_restore (TYPE_2__*,scalar_t__) ;
 scalar_t__ hook_save (TYPE_2__*) ;
 int hook_vmevent (TYPE_2__*) ;
 int lj_vm_pcall (TYPE_1__*,int ,scalar_t__,int ) ;
 int restorestack (TYPE_1__*,int ) ;
 int stderr ;
 char* strVdata (int ) ;
 scalar_t__ tvisstr (int ) ;

void lj_vmevent_call(lua_State *L, ptrdiff_t argbase)
{
  global_State *g = G(L);
  uint8_t oldmask = g->vmevmask;
  uint8_t oldh = hook_save(g);
  int status;
  g->vmevmask = 0;
  hook_vmevent(g);
  status = lj_vm_pcall(L, restorestack(L, argbase), 0+1, 0);
  if (LJ_UNLIKELY(status)) {

    L->top--;
    fputs("VM handler failed: ", stderr);
    fputs(tvisstr(L->top) ? strVdata(L->top) : "?", stderr);
    fputc('\n', stderr);
  }
  hook_restore(g, oldh);
  if (g->vmevmask != VMEVENT_NOCACHE)
    g->vmevmask = oldmask;
}
