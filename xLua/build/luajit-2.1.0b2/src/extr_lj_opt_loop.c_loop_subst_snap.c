
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef void* uint16_t ;
struct TYPE_10__ {size_t nsnap; size_t nsnapmap; int * snapmap; scalar_t__ nins; TYPE_2__* snap; } ;
struct TYPE_11__ {scalar_t__ irt; } ;
struct TYPE_8__ {TYPE_3__ cur; TYPE_7__ guardemit; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_9__ {size_t mapofs; size_t nent; scalar_t__ nslots; scalar_t__ count; int topslot; scalar_t__ ref; } ;
typedef TYPE_2__ SnapShot ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef scalar_t__ IRRef1 ;
typedef scalar_t__ BCReg ;


 int irref_isk (size_t) ;
 scalar_t__ irt_isguard (TYPE_7__) ;
 size_t snap_nextofs (TYPE_3__*,TYPE_2__*) ;
 size_t snap_ref (int ) ;
 int snap_setref (int ,scalar_t__) ;
 scalar_t__ snap_slot (int ) ;

__attribute__((used)) static void loop_subst_snap(jit_State *J, SnapShot *osnap,
       SnapEntry *loopmap, IRRef1 *subst)
{
  SnapEntry *nmap, *omap = &J->cur.snapmap[osnap->mapofs];
  SnapEntry *nextmap = &J->cur.snapmap[snap_nextofs(&J->cur, osnap)];
  MSize nmapofs;
  MSize on, ln, nn, onent = osnap->nent;
  BCReg nslots = osnap->nslots;
  SnapShot *snap = &J->cur.snap[J->cur.nsnap];
  if (irt_isguard(J->guardemit)) {
    nmapofs = J->cur.nsnapmap;
    J->cur.nsnap++;
  } else {
    snap--;
    nmapofs = snap->mapofs;
  }
  J->guardemit.irt = 0;

  snap->mapofs = (uint16_t)nmapofs;
  snap->ref = (IRRef1)J->cur.nins;
  snap->nslots = nslots;
  snap->topslot = osnap->topslot;
  snap->count = 0;
  nmap = &J->cur.snapmap[nmapofs];

  on = ln = nn = 0;
  while (on < onent) {
    SnapEntry osn = omap[on], lsn = loopmap[ln];
    if (snap_slot(lsn) < snap_slot(osn)) {
      nmap[nn++] = lsn;
      ln++;
    } else {
      if (snap_slot(lsn) == snap_slot(osn)) ln++;
      if (!irref_isk(snap_ref(osn)))
 osn = snap_setref(osn, subst[snap_ref(osn)]);
      nmap[nn++] = osn;
      on++;
    }
  }
  while (snap_slot(loopmap[ln]) < nslots)
    nmap[nn++] = loopmap[ln++];
  snap->nent = (uint8_t)nn;
  omap += onent;
  nmap += nn;
  while (omap < nextmap)
    *nmap++ = *omap++;
  J->cur.nsnapmap = (uint16_t)(nmap - J->cur.snapmap);
}
