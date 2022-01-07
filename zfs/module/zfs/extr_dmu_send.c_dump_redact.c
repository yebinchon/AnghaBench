
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct drr_redact {scalar_t__ drr_object; scalar_t__ drr_offset; scalar_t__ drr_length; int drr_toguid; } ;
struct TYPE_7__ {scalar_t__ dsc_pending_op; int dsc_toguid; TYPE_5__* dsc_drr; } ;
typedef TYPE_2__ dmu_send_cookie_t ;
typedef int dmu_replay_record_t ;
struct TYPE_6__ {struct drr_redact drr_redact; } ;
struct TYPE_8__ {int drr_type; TYPE_1__ drr_u; } ;


 int DRR_REDACT ;
 int EINTR ;
 scalar_t__ PENDING_NONE ;
 scalar_t__ PENDING_REDACT ;
 int SET_ERROR (int ) ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ dump_record (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int
dump_redact(dmu_send_cookie_t *dscp, uint64_t object, uint64_t offset,
    uint64_t length)
{
 struct drr_redact *drrr = &dscp->dsc_drr->drr_u.drr_redact;







 if (dscp->dsc_pending_op != PENDING_NONE &&
     dscp->dsc_pending_op != PENDING_REDACT) {
  if (dump_record(dscp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
  dscp->dsc_pending_op = PENDING_NONE;
 }

 if (dscp->dsc_pending_op == PENDING_REDACT) {




  if (drrr->drr_object == object && drrr->drr_offset +
      drrr->drr_length == offset) {
   drrr->drr_length += length;
   return (0);
  } else {

   if (dump_record(dscp, ((void*)0), 0) != 0)
    return (SET_ERROR(EINTR));
   dscp->dsc_pending_op = PENDING_NONE;
  }
 }

 bzero(dscp->dsc_drr, sizeof (dmu_replay_record_t));
 dscp->dsc_drr->drr_type = DRR_REDACT;
 drrr->drr_object = object;
 drrr->drr_offset = offset;
 drrr->drr_length = length;
 drrr->drr_toguid = dscp->dsc_toguid;
 dscp->dsc_pending_op = PENDING_REDACT;

 return (0);
}
