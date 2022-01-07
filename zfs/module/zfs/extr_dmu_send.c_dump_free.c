
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct drr_free {scalar_t__ drr_object; scalar_t__ drr_offset; scalar_t__ drr_length; int drr_toguid; } ;
struct TYPE_7__ {scalar_t__ dsc_last_data_object; scalar_t__ dsc_last_data_offset; scalar_t__ dsc_pending_op; int dsc_toguid; TYPE_5__* dsc_drr; } ;
typedef TYPE_2__ dmu_send_cookie_t ;
typedef int dmu_replay_record_t ;
struct TYPE_6__ {struct drr_free drr_free; } ;
struct TYPE_8__ {int drr_type; TYPE_1__ drr_u; } ;


 int ASSERT (int) ;
 scalar_t__ DMU_OBJECT_END ;
 int DRR_FREE ;
 int EINTR ;
 scalar_t__ PENDING_FREE ;
 scalar_t__ PENDING_NONE ;
 int SET_ERROR (int ) ;
 scalar_t__ UINT64_MAX ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ dump_record (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int
dump_free(dmu_send_cookie_t *dscp, uint64_t object, uint64_t offset,
    uint64_t length)
{
 struct drr_free *drrf = &(dscp->dsc_drr->drr_u.drr_free);
 ASSERT(object > dscp->dsc_last_data_object ||
     (object == dscp->dsc_last_data_object &&
     offset > dscp->dsc_last_data_offset));
 if (dscp->dsc_pending_op != PENDING_NONE &&
     dscp->dsc_pending_op != PENDING_FREE) {
  if (dump_record(dscp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
  dscp->dsc_pending_op = PENDING_NONE;
 }

 if (dscp->dsc_pending_op == PENDING_FREE) {




  if (drrf->drr_object == object && drrf->drr_offset +
      drrf->drr_length == offset) {
   if (offset + length < offset || length == UINT64_MAX)
    drrf->drr_length = UINT64_MAX;
   else
    drrf->drr_length += length;
   return (0);
  } else {

   if (dump_record(dscp, ((void*)0), 0) != 0)
    return (SET_ERROR(EINTR));
   dscp->dsc_pending_op = PENDING_NONE;
  }
 }

 bzero(dscp->dsc_drr, sizeof (dmu_replay_record_t));
 dscp->dsc_drr->drr_type = DRR_FREE;
 drrf->drr_object = object;
 drrf->drr_offset = offset;
 if (offset + length < offset)
  drrf->drr_length = DMU_OBJECT_END;
 else
  drrf->drr_length = length;
 drrf->drr_toguid = dscp->dsc_toguid;
 if (length == DMU_OBJECT_END) {
  if (dump_record(dscp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
 } else {
  dscp->dsc_pending_op = PENDING_FREE;
 }

 return (0);
}
