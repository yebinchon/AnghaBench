
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int * top; int stack; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_10__ {scalar_t__ i_ci; } ;
typedef TYPE_2__ lua_Debug ;
struct TYPE_11__ {int flags; int numparams; } ;
typedef int TValue ;
typedef TYPE_3__ GCproto ;
typedef int GCfunc ;
typedef int BCReg ;
typedef scalar_t__ BCPos ;


 int LJ_FR2 ;
 scalar_t__ NO_BCPOS ;
 int PROTO_VARARG ;
 scalar_t__ debug_framepc (TYPE_1__*,int *,int *) ;
 char* debug_varname (TYPE_3__*,scalar_t__,int) ;
 int * frame_func (int *) ;
 scalar_t__ frame_isvarg (int *) ;
 int * frame_prevd (int *) ;
 TYPE_3__* funcproto (int *) ;
 int * tvref (int ) ;

__attribute__((used)) static TValue *debug_localname(lua_State *L, const lua_Debug *ar,
          const char **name, BCReg slot1)
{
  uint32_t offset = (uint32_t)ar->i_ci & 0xffff;
  uint32_t size = (uint32_t)ar->i_ci >> 16;
  TValue *frame = tvref(L->stack) + offset;
  TValue *nextframe = size ? frame + size : ((void*)0);
  GCfunc *fn = frame_func(frame);
  BCPos pc = debug_framepc(L, fn, nextframe);
  if (!nextframe) nextframe = L->top+LJ_FR2;
  if ((int)slot1 < 0) {
    if (pc != NO_BCPOS) {
      GCproto *pt = funcproto(fn);
      if ((pt->flags & PROTO_VARARG)) {
 slot1 = pt->numparams + (BCReg)(-(int)slot1);
 if (frame_isvarg(frame)) {
   nextframe = frame;
   frame = frame_prevd(frame);
 }
 if (frame + slot1+LJ_FR2 < nextframe) {
   *name = "(*vararg)";
   return frame+slot1;
 }
      }
    }
    return ((void*)0);
  }
  if (pc != NO_BCPOS &&
      (*name = debug_varname(funcproto(fn), pc, slot1-1)) != ((void*)0))
    ;
  else if (slot1 > 0 && frame + slot1+LJ_FR2 < nextframe)
    *name = "(*temporary)";
  return frame+slot1;
}
