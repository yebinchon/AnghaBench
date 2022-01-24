#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  void* uint16_t ;
struct TYPE_10__ {size_t nsnap; size_t nsnapmap; int /*<<< orphan*/ * snapmap; scalar_t__ nins; TYPE_2__* snap; } ;
struct TYPE_11__ {scalar_t__ irt; } ;
struct TYPE_8__ {TYPE_3__ cur; TYPE_7__ guardemit; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_9__ {size_t mapofs; size_t nent; scalar_t__ nslots; scalar_t__ count; int /*<<< orphan*/  topslot; scalar_t__ ref; } ;
typedef  TYPE_2__ SnapShot ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  size_t MSize ;
typedef  scalar_t__ IRRef1 ;
typedef  scalar_t__ BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (TYPE_7__) ; 
 size_t FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(jit_State *J, SnapShot *osnap,
			    SnapEntry *loopmap, IRRef1 *subst)
{
  SnapEntry *nmap, *omap = &J->cur.snapmap[osnap->mapofs];
  SnapEntry *nextmap = &J->cur.snapmap[FUNC2(&J->cur, osnap)];
  MSize nmapofs;
  MSize on, ln, nn, onent = osnap->nent;
  BCReg nslots = osnap->nslots;
  SnapShot *snap = &J->cur.snap[J->cur.nsnap];
  if (FUNC1(J->guardemit)) {  /* Guard inbetween? */
    nmapofs = J->cur.nsnapmap;
    J->cur.nsnap++;  /* Add new snapshot. */
  } else {  /* Otherwise overwrite previous snapshot. */
    snap--;
    nmapofs = snap->mapofs;
  }
  J->guardemit.irt = 0;
  /* Setup new snapshot. */
  snap->mapofs = (uint16_t)nmapofs;
  snap->ref = (IRRef1)J->cur.nins;
  snap->nslots = nslots;
  snap->topslot = osnap->topslot;
  snap->count = 0;
  nmap = &J->cur.snapmap[nmapofs];
  /* Substitute snapshot slots. */
  on = ln = nn = 0;
  while (on < onent) {
    SnapEntry osn = omap[on], lsn = loopmap[ln];
    if (FUNC5(lsn) < FUNC5(osn)) {  /* Copy slot from loop map. */
      nmap[nn++] = lsn;
      ln++;
    } else {  /* Copy substituted slot from snapshot map. */
      if (FUNC5(lsn) == FUNC5(osn)) ln++;  /* Shadowed loop slot. */
      if (!FUNC0(FUNC3(osn)))
	osn = FUNC4(osn, subst[FUNC3(osn)]);
      nmap[nn++] = osn;
      on++;
    }
  }
  while (FUNC5(loopmap[ln]) < nslots)  /* Copy remaining loop slots. */
    nmap[nn++] = loopmap[ln++];
  snap->nent = (uint8_t)nn;
  omap += onent;
  nmap += nn;
  while (omap < nextmap)  /* Copy PC + frame links. */
    *nmap++ = *omap++;
  J->cur.nsnapmap = (uint16_t)(nmap - J->cur.snapmap);
}