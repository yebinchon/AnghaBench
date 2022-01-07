
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int hookmask; int vmstate; } ;
typedef TYPE_1__ global_State ;
struct TYPE_8__ {char vmstate; int samples; TYPE_1__* g; } ;
typedef TYPE_2__ ProfileState ;


 int HOOK_PROFILE ;
 int HOOK_VMEVENT ;
 int LJ_VMST_C ;
 int LJ_VMST_GC ;
 int LJ_VMST_INTERP ;
 int lj_dispatch_update (TYPE_1__*) ;
 int profile_lock (TYPE_2__*) ;
 int profile_unlock (TYPE_2__*) ;

__attribute__((used)) static void profile_trigger(ProfileState *ps)
{
  global_State *g = ps->g;
  uint8_t mask;
  profile_lock(ps);
  ps->samples++;
  mask = g->hookmask;
  if (!(mask & (HOOK_PROFILE|HOOK_VMEVENT))) {
    int st = g->vmstate;
    ps->vmstate = st >= 0 ? 'N' :
    st == ~LJ_VMST_INTERP ? 'I' :
    st == ~LJ_VMST_C ? 'C' :
    st == ~LJ_VMST_GC ? 'G' : 'J';
    g->hookmask = (mask | HOOK_PROFILE);
    lj_dispatch_update(g);
  }
  profile_unlock(ps);
}
