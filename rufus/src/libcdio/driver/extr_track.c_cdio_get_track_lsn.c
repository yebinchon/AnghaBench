
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int track_t ;
typedef int msf_t ;
typedef int lsn_t ;
struct TYPE_5__ {int (* get_track_lba ) (int ,int ) ;} ;
struct TYPE_6__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int CDIO_INVALID_LSN ;
 scalar_t__ cdio_get_track_msf (TYPE_2__ const*,int ,int *) ;
 int cdio_info (char*) ;
 int cdio_lba_to_lsn (int ) ;
 int cdio_msf_to_lsn (int *) ;
 int stub1 (int ,int ) ;

lsn_t
cdio_get_track_lsn(const CdIo_t *p_cdio, track_t u_track)
{

  if (((void*)0) == p_cdio) {
    cdio_info("Null CdIo object passed\n");
    return CDIO_INVALID_LSN;
  }
  if (p_cdio->op.get_track_lba) {
    return cdio_lba_to_lsn(p_cdio->op.get_track_lba (p_cdio->env, u_track));
  } else {
    msf_t msf;
    if (cdio_get_track_msf(p_cdio, u_track, &msf))
      return cdio_msf_to_lsn(&msf);
    return CDIO_INVALID_LSN;
  }
}
