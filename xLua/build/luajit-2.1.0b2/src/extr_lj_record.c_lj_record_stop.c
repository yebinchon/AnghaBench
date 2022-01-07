
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {scalar_t__ traceno; scalar_t__ root; scalar_t__ link; scalar_t__ linktype; } ;
struct TYPE_9__ {scalar_t__ framedepth; scalar_t__ retdepth; int flags; int mergesnap; scalar_t__ needsnap; TYPE_1__ cur; scalar_t__ retryrec; } ;
typedef TYPE_2__ jit_State ;
typedef scalar_t__ TraceNo ;
typedef scalar_t__ TraceLink ;


 int JIT_F_OPT_LOOP ;
 int LJ_TRERR_RETRY ;
 int canonicalize_slots (TYPE_2__*) ;
 int lj_snap_add (TYPE_2__*) ;
 int lj_trace_end (TYPE_2__*) ;
 int lj_trace_err (TYPE_2__*,int ) ;

void lj_record_stop(jit_State *J, TraceLink linktype, TraceNo lnk)
{




  lj_trace_end(J);
  J->cur.linktype = (uint8_t)linktype;
  J->cur.link = (uint16_t)lnk;

  if (lnk == J->cur.traceno && J->framedepth + J->retdepth == 0) {
    if ((J->flags & JIT_F_OPT_LOOP))
      goto nocanon;
    if (J->cur.root)
      J->cur.link = J->cur.root;
  }
  canonicalize_slots(J);
nocanon:

  lj_snap_add(J);
  J->needsnap = 0;
  J->mergesnap = 1;
}
