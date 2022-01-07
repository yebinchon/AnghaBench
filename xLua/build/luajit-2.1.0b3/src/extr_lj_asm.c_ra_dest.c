
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int freeset; } ;
struct TYPE_11__ {int s; int r; } ;
typedef int RegSet ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 scalar_t__ LJ_UNLIKELY (int ) ;
 int RA_DBGX (TYPE_2__*) ;
 int ra_free (TYPE_2__*,int ) ;
 int ra_gethint (int ) ;
 scalar_t__ ra_hashint (int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_hasspill (int ) ;
 int ra_modified (TYPE_2__*,int ) ;
 int ra_save (TYPE_2__*,TYPE_1__*,int ) ;
 int ra_scratch (TYPE_2__*,int) ;
 scalar_t__ rset_test (int,int ) ;

__attribute__((used)) static Reg ra_dest(ASMState *as, IRIns *ir, RegSet allow)
{
  Reg dest = ir->r;
  if (ra_hasreg(dest)) {
    ra_free(as, dest);
    ra_modified(as, dest);
  } else {
    if (ra_hashint(dest) && rset_test((as->freeset&allow), ra_gethint(dest))) {
      dest = ra_gethint(dest);
      ra_modified(as, dest);
      RA_DBGX((as, "dest           $r", dest));
    } else {
      dest = ra_scratch(as, allow);
    }
    ir->r = dest;
  }
  if (LJ_UNLIKELY(ra_hasspill(ir->s))) ra_save(as, ir, dest);
  return dest;
}
