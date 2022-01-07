
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxstack; int * base; int stack; int * top; } ;
typedef TYPE_1__ lua_State ;
typedef int global_State ;
struct TYPE_5__ {int framesize; } ;
typedef int TValue ;
typedef int MSize ;
typedef int GCfunc ;


 int LJ_FR2 ;
 int * frame_func (int *) ;
 int * frame_prev (int *) ;
 TYPE_3__* funcproto (int *) ;
 int gc_markobj (int *,int *) ;
 scalar_t__ isluafunc (int *) ;
 int * tvref (int ) ;

__attribute__((used)) static MSize gc_traverse_frames(global_State *g, lua_State *th)
{
  TValue *frame, *top = th->top-1, *bot = tvref(th->stack);

  for (frame = th->base-1; frame > bot+LJ_FR2; frame = frame_prev(frame)) {
    GCfunc *fn = frame_func(frame);
    TValue *ftop = frame;
    if (isluafunc(fn)) ftop += funcproto(fn)->framesize;
    if (ftop > top) top = ftop;
    if (!LJ_FR2) gc_markobj(g, fn);
  }
  top++;
  if (top > tvref(th->maxstack)) top = tvref(th->maxstack);
  return (MSize)(top - bot);
}
