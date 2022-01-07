
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct drr_freeobjects {scalar_t__ drr_firstobj; scalar_t__ drr_numobjs; int drr_toguid; } ;
struct TYPE_8__ {scalar_t__ dsc_pending_op; int dsc_toguid; TYPE_5__* dsc_drr; int dsc_os; } ;
typedef TYPE_2__ dmu_send_cookie_t ;
typedef int dmu_replay_record_t ;
struct TYPE_10__ {int dn_maxblkid; } ;
struct TYPE_7__ {struct drr_freeobjects drr_freeobjects; } ;
struct TYPE_9__ {int drr_type; TYPE_1__ drr_u; } ;


 TYPE_6__* DMU_META_DNODE (int ) ;
 int DNODES_PER_BLOCK ;
 int DRR_FREEOBJECTS ;
 int EINTR ;
 scalar_t__ PENDING_FREEOBJECTS ;
 scalar_t__ PENDING_NONE ;
 int SET_ERROR (int ) ;
 scalar_t__ UINT64_MAX ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ dump_record (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int
dump_freeobjects(dmu_send_cookie_t *dscp, uint64_t firstobj, uint64_t numobjs)
{
 struct drr_freeobjects *drrfo = &(dscp->dsc_drr->drr_u.drr_freeobjects);
 uint64_t maxobj = DNODES_PER_BLOCK *
     (DMU_META_DNODE(dscp->dsc_os)->dn_maxblkid + 1);







 if (maxobj > 0) {
  if (maxobj < firstobj)
   return (0);

  if (maxobj < firstobj + numobjs)
   numobjs = maxobj - firstobj;
 }
 if (dscp->dsc_pending_op != PENDING_NONE &&
     dscp->dsc_pending_op != PENDING_FREEOBJECTS) {
  if (dump_record(dscp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
  dscp->dsc_pending_op = PENDING_NONE;
 }
 if (numobjs == 0)
  numobjs = UINT64_MAX - firstobj;

 if (dscp->dsc_pending_op == PENDING_FREEOBJECTS) {




  if (drrfo->drr_firstobj + drrfo->drr_numobjs == firstobj) {
   drrfo->drr_numobjs += numobjs;
   return (0);
  } else {

   if (dump_record(dscp, ((void*)0), 0) != 0)
    return (SET_ERROR(EINTR));
   dscp->dsc_pending_op = PENDING_NONE;
  }
 }


 bzero(dscp->dsc_drr, sizeof (dmu_replay_record_t));
 dscp->dsc_drr->drr_type = DRR_FREEOBJECTS;
 drrfo->drr_firstobj = firstobj;
 drrfo->drr_numobjs = numobjs;
 drrfo->drr_toguid = dscp->dsc_toguid;

 dscp->dsc_pending_op = PENDING_FREEOBJECTS;

 return (0);
}
