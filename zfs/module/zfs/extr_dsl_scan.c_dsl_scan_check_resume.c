
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ zb_object; scalar_t__ zb_blkid; scalar_t__ zb_level; scalar_t__ zb_objset; } ;
typedef TYPE_2__ zbookmark_phys_t ;
typedef int longlong_t ;
typedef scalar_t__ int64_t ;
struct TYPE_15__ {scalar_t__ zb_object; } ;
struct TYPE_12__ {TYPE_5__ scn_bookmark; } ;
struct TYPE_14__ {TYPE_1__ scn_phys; } ;
typedef TYPE_3__ dsl_scan_t ;
typedef int dnode_phys_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZB_IS_ZERO (TYPE_5__*) ;
 scalar_t__ bcmp (TYPE_2__ const*,TYPE_5__*,int) ;
 int bzero (TYPE_5__*,int) ;
 int dprintf (char*,int ,int ,int ,int ) ;
 scalar_t__ zbookmark_subtree_completed (int const*,TYPE_2__ const*,TYPE_5__*) ;

__attribute__((used)) static boolean_t
dsl_scan_check_resume(dsl_scan_t *scn, const dnode_phys_t *dnp,
    const zbookmark_phys_t *zb)
{



 if (!ZB_IS_ZERO(&scn->scn_phys.scn_bookmark) &&
     (int64_t)zb->zb_object >= 0) {




  if (zbookmark_subtree_completed(dnp, zb,
      &scn->scn_phys.scn_bookmark))
   return (B_TRUE);







  if (bcmp(zb, &scn->scn_phys.scn_bookmark, sizeof (*zb)) == 0 ||
      zb->zb_object > scn->scn_phys.scn_bookmark.zb_object) {
   dprintf("resuming at %llx/%llx/%llx/%llx\n",
       (longlong_t)zb->zb_objset,
       (longlong_t)zb->zb_object,
       (longlong_t)zb->zb_level,
       (longlong_t)zb->zb_blkid);
   bzero(&scn->scn_phys.scn_bookmark, sizeof (*zb));
  }
 }
 return (B_FALSE);
}
