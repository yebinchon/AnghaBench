
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float prof_mode; int * prev_pt; } ;
typedef TYPE_1__ jit_State ;


 int IRTG (int ,int ) ;
 int IRT_NIL ;
 int IR_PROF ;
 int emitir (int ,int ,int ) ;
 int lj_snap_add (TYPE_1__*) ;

__attribute__((used)) static void rec_profile_ret(jit_State *J)
{
  if (J->prof_mode == 'f') {
    emitir(IRTG(IR_PROF, IRT_NIL), 0, 0);
    J->prev_pt = ((void*)0);
    lj_snap_add(J);
  }
}
