
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * base; int stack; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;


 int LJ_FR2 ;
 scalar_t__ frame_gc (int *) ;
 scalar_t__ frame_islua (int *) ;
 scalar_t__ frame_isvarg (int *) ;
 int * frame_prevd (int *) ;
 int * frame_prevl (int *) ;
 scalar_t__ obj2gco (TYPE_1__*) ;
 int * tvref (int ) ;

cTValue *lj_debug_frame(lua_State *L, int level, int *size)
{
  cTValue *frame, *nextframe, *bot = tvref(L->stack)+LJ_FR2;

  for (nextframe = frame = L->base-1; frame > bot; ) {
    if (frame_gc(frame) == obj2gco(L))
      level++;
    if (level-- == 0) {
      *size = (int)(nextframe - frame);
      return frame;
    }
    nextframe = frame;
    if (frame_islua(frame)) {
      frame = frame_prevl(frame);
    } else {
      if (frame_isvarg(frame))
 level++;
      frame = frame_prevd(frame);
    }
  }
  *size = level;
  return ((void*)0);
}
