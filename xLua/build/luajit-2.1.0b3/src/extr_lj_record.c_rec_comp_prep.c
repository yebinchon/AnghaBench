
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nsnap; scalar_t__ nins; TYPE_1__* snap; } ;
struct TYPE_8__ {TYPE_2__ cur; } ;
typedef TYPE_3__ jit_State ;
struct TYPE_6__ {scalar_t__ ref; } ;


 int IRT (int ,int ) ;
 int IRT_NIL ;
 int IR_NOP ;
 int emitir_raw (int ,int ,int ) ;
 int lj_snap_add (TYPE_3__*) ;

__attribute__((used)) static void rec_comp_prep(jit_State *J)
{

  if (J->cur.nsnap == 1 && J->cur.snap[0].ref == J->cur.nins)
    emitir_raw(IRT(IR_NOP, IRT_NIL), 0, 0);
  lj_snap_add(J);
}
