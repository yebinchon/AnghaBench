
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pt; scalar_t__ prof_mode; } ;
typedef TYPE_1__ jit_State ;
typedef int BCIns ;


 int IRTG (int ,int ) ;
 int IRT_NIL ;
 int IR_PROF ;
 int emitir (int ,int ,int ) ;
 int lj_snap_add (TYPE_1__*) ;
 scalar_t__ rec_profile_need (TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void rec_profile_ins(jit_State *J, const BCIns *pc)
{
  if (J->prof_mode && rec_profile_need(J, J->pt, pc)) {
    emitir(IRTG(IR_PROF, IRT_NIL), 0, 0);
    lj_snap_add(J);
  }
}
