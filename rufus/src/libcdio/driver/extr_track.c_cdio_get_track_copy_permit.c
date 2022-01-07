
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int track_t ;
typedef int track_flag_t ;
struct TYPE_4__ {int (* get_track_copy_permit ) (int ,int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int CDIO_TRACK_FLAG_UNKNOWN ;
 int stub1 (int ,int ) ;

track_flag_t
cdio_get_track_copy_permit(const CdIo_t *p_cdio, track_t u_track)
{
  if (p_cdio->op.get_track_copy_permit) {
    return p_cdio->op.get_track_copy_permit (p_cdio->env, u_track);
  } else {
    return CDIO_TRACK_FLAG_UNKNOWN;
  }
}
