
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int nsnap; int nsnapmap; scalar_t__ nins; TYPE_4__* snap; } ;
struct TYPE_11__ {scalar_t__ irt; } ;
struct TYPE_9__ {TYPE_1__ cur; TYPE_7__ guardemit; scalar_t__ mergesnap; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_10__ {scalar_t__ ref; int mapofs; } ;
typedef int MSize ;


 int IRT (int ,int ) ;
 int IRT_NIL ;
 int IR_NOP ;
 int emitir_raw (int ,int ,int ) ;
 int irt_isguard (TYPE_7__) ;
 int lj_snap_grow_buf (TYPE_2__*,int) ;
 int snapshot_stack (TYPE_2__*,TYPE_4__*,int) ;

void lj_snap_add(jit_State *J)
{
  MSize nsnap = J->cur.nsnap;
  MSize nsnapmap = J->cur.nsnapmap;

  if ((nsnap > 0 && J->cur.snap[nsnap-1].ref == J->cur.nins) ||
      (J->mergesnap && !irt_isguard(J->guardemit))) {
    if (nsnap == 1) {
      emitir_raw(IRT(IR_NOP, IRT_NIL), 0, 0);
      goto nomerge;
    }
    nsnapmap = J->cur.snap[--nsnap].mapofs;
  } else {
  nomerge:
    lj_snap_grow_buf(J, nsnap+1);
    J->cur.nsnap = (uint16_t)(nsnap+1);
  }
  J->mergesnap = 0;
  J->guardemit.irt = 0;
  snapshot_stack(J, &J->cur.snap[nsnap], nsnapmap);
}
