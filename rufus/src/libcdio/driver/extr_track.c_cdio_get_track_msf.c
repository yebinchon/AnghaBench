
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int track_t ;
typedef int msf_t ;
typedef scalar_t__ lba_t ;
struct TYPE_4__ {int (* get_track_msf ) (int ,int ,int *) ;scalar_t__ (* get_track_lba ) (int ,int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 scalar_t__ CDIO_INVALID_LBA ;
 int cdio_lba_to_msf (scalar_t__,int *) ;
 int stub1 (int ,int ,int *) ;
 scalar_t__ stub2 (int ,int ) ;

bool
cdio_get_track_msf(const CdIo_t *p_cdio, track_t u_track, msf_t *msf)
{
  if (!p_cdio) return 0;

  if (p_cdio->op.get_track_msf) {
    return p_cdio->op.get_track_msf (p_cdio->env, u_track, msf);
  } else if (p_cdio->op.get_track_lba) {
    lba_t lba = p_cdio->op.get_track_lba (p_cdio->env, u_track);
    if (lba == CDIO_INVALID_LBA) return 0;
    cdio_lba_to_msf(lba, msf);
    return 1;
  } else {
    return 0;
  }
}
