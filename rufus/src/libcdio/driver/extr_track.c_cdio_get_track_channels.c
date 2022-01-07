
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ track_t ;
struct TYPE_5__ {int (* get_track_channels ) (int ,scalar_t__) ;} ;
struct TYPE_6__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int CDIO_LOG_WARN ;
 scalar_t__ cdio_get_last_track_num (TYPE_2__ const*) ;
 int cdio_info (char*) ;
 int cdio_log (int ,char*,scalar_t__,scalar_t__) ;
 int stub1 (int ,scalar_t__) ;

int
cdio_get_track_channels(const CdIo_t *p_cdio, track_t u_track)
{
  track_t u_last_track;
  if (((void*)0) == p_cdio) {
    cdio_info("Null CdIo object passed\n");
    return -1;
  }
  u_last_track = cdio_get_last_track_num(p_cdio);
  if (u_track > u_last_track) {
     cdio_log(CDIO_LOG_WARN, "Number of tracks exceeds maximum (%d vs. %d)\n",
              u_track, u_last_track);
     return -1;
  }
  if (p_cdio->op.get_track_channels) {
    return p_cdio->op.get_track_channels (p_cdio->env, u_track);
  } else {
    return -2;
  }
}
