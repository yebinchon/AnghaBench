
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int snap; } ;
struct TYPE_6__ {int snapbuf; TYPE_1__ cur; int sizesnap; int L; int * param; } ;
typedef TYPE_2__ jit_State ;
typedef scalar_t__ MSize ;


 size_t JIT_P_maxsnap ;
 int LJ_TRERR_SNAPOV ;
 int SnapShot ;
 int lj_mem_growvec (int ,int ,int ,scalar_t__,int ) ;
 int lj_trace_err (TYPE_2__*,int ) ;

void lj_snap_grow_buf_(jit_State *J, MSize need)
{
  MSize maxsnap = (MSize)J->param[JIT_P_maxsnap];
  if (need > maxsnap)
    lj_trace_err(J, LJ_TRERR_SNAPOV);
  lj_mem_growvec(J->L, J->snapbuf, J->sizesnap, maxsnap, SnapShot);
  J->cur.snap = J->snapbuf;
}
