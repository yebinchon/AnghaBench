
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ framedepth; int pc; TYPE_1__* L; int * baseslot; } ;
typedef TYPE_2__ jit_State ;
typedef int cTValue ;
struct TYPE_7__ {int framesize; } ;
struct TYPE_5__ {int * top; int * base; } ;
typedef int SnapEntry ;
typedef scalar_t__ MSize ;
typedef int GCfunc ;
typedef int BCReg ;


 int LJ_FR2 ;
 int SNAP_MKFTSZ (int ) ;
 int SNAP_MKPC (int ) ;
 int frame_contpc (int *) ;
 int frame_ftsz (int *) ;
 int * frame_func (int *) ;
 int frame_isc (int *) ;
 scalar_t__ frame_iscont (int *) ;
 scalar_t__ frame_islua (int *) ;
 int frame_pc (int *) ;
 int * frame_prevd (int *) ;
 int * frame_prevl (int *) ;
 TYPE_4__* funcproto (int *) ;
 scalar_t__ isluafunc (int *) ;
 int lua_assert (int) ;

__attribute__((used)) static BCReg snapshot_framelinks(jit_State *J, SnapEntry *map)
{
  cTValue *frame = J->L->base - 1;
  cTValue *lim = J->L->base - J->baseslot;
  GCfunc *fn = frame_func(frame);
  cTValue *ftop = isluafunc(fn) ? (frame+funcproto(fn)->framesize) : J->L->top;
  MSize f = 0;
  lua_assert(!LJ_FR2);
  map[f++] = SNAP_MKPC(J->pc);
  while (frame > lim) {
    if (frame_islua(frame)) {
      map[f++] = SNAP_MKPC(frame_pc(frame));
      frame = frame_prevl(frame);
    } else if (frame_iscont(frame)) {
      map[f++] = SNAP_MKFTSZ(frame_ftsz(frame));
      map[f++] = SNAP_MKPC(frame_contpc(frame));
      frame = frame_prevd(frame);
    } else {
      lua_assert(!frame_isc(frame));
      map[f++] = SNAP_MKFTSZ(frame_ftsz(frame));
      frame = frame_prevd(frame);
      continue;
    }
    if (frame + funcproto(frame_func(frame))->framesize > ftop)
      ftop = frame + funcproto(frame_func(frame))->framesize;
  }
  lua_assert(f == (MSize)(1 + J->framedepth));
  return (BCReg)(ftop - lim);
}
